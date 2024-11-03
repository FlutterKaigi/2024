import { Hono } from "hono";
import { generateHtml } from "./util/htmlGenerator";
import { vValidator } from "@hono/valibot-validator";
import * as v from "valibot";
import { createClient } from "@supabase/supabase-js";
import { Database } from "supabase-types";
import { Bindings } from "./bindings";
import { logger } from "hono/logger";

const app = new Hono<{ Bindings: Bindings }>();

app.use("*", logger());

app.get(
  "/sponsor/:id",
  vValidator(
    "param",
    v.object({
      id: v.pipe(
        v.string(),
        v.transform((input) => parseInt(input))
      )
    })
  ),
  async (c) => {
    const params = c.req.valid("param");
    const id = params.id;
    const supabase = createClient<Database>(
      c.env.SUPABASE_URL,
      c.env.SUPABASE_KEY
    );
    const { data, error } = await supabase
      .from("sponsors")
      .select()
      .eq("id", id)
      .maybeSingle();
    if (error) {
      return c.json({ error: error.message }, 500);
    }
    if (!data) {
      return c.json({ error: "Sponsor not found" }, 404);
    }

    const url = c.req.url;
    const host = new URL(url).host;
    const html = await generateHtml({
      host,
      url,
      title: data.name,
      description: `${data.name}のスポンサー情報です。`
    });
    c.res.headers.set("Cache-Control", "public, max-age=3600"); // 1時間

    return c.html(html);
  }
);

app.notFound(async (c) => {
  const response = await c.env.ASSETS.fetch(c.req.raw);
  // ファイルが存在しなかった場合、ホームページへリダイレクト
  if (response.status === 404) {
    return c.redirect("/", 302);
  }
  return response;
});

export default app;
