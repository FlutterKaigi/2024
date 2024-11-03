import { Hono } from "hono";
import { vValidator } from "@hono/valibot-validator";
import * as v from "valibot";
import { createClient } from "@supabase/supabase-js";
import { Database } from "supabase-types";
import { Bindings } from "./bindings";
import { logger } from "hono/logger";
import ogImage from "./ogImage";
import { OgpRewriter } from "./util/ogpRewriter";

const app = new Hono<{ Bindings: Bindings }>();

app.route("/og-image.png", ogImage);

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

    const url = new URL(c.req.url);
    const rewriter = new OgpRewriter({
      title: data.name,
      description: data.name + "のスポンサーです",
      url: url.toString()
    });
    const baseHtmlUrl = new URL("/", url);
    const baseHtml = await fetch(baseHtmlUrl);
    const rewrittenResponse = await new HTMLRewriter()
      .on("head", rewriter)
      .transform(baseHtml);
    return rewrittenResponse;
  }
);

app.use("*", (c, next) => {
  c.header("Cache-Control", "public, max-age=3600");
  return next();
});

app.notFound(async (c) => {
  const response = await c.env.ASSETS.fetch(c.req.raw);

  // HTMLの場合
  if (response.headers.get("Content-Type") === "text/html") {

    const url = new URL(c.req.url);
    const rewriter = new OgpRewriter({
      url: url.toString()
    });
    const baseHtmlUrl = new URL("/", url);
    const baseHtml = await fetch(baseHtmlUrl);
    const rewrittenResponse = await new HTMLRewriter()
      .on("head", rewriter)
      .transform(baseHtml);
    return rewrittenResponse;
  }
  return response;
});

export default app;
