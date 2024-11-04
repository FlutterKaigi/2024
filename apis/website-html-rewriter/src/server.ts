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
    const baseResponse = await fetchBaseResponse(url);
    const rewrittenResponse = await new HTMLRewriter()
      .on("head", rewriter)
      .transform(baseResponse);
    return rewrittenResponse;
  }
);

app.get("/job-board", async (c) => {
  const url = new URL(c.req.url);
  const rewriter = new OgpRewriter({
    title: "ジョブボード",
    description: "FlutterKaigi 2024のジョブボードです",
    url: url.toString()
  });
  const baseResponse = await fetchBaseResponse(url);
  const rewrittenResponse = await new HTMLRewriter()
    .on("head", rewriter)
    .transform(baseResponse);
  return rewrittenResponse;
});

app.get("/session", async (c) => {
  const url = new URL(c.req.url);
  const rewriter = new OgpRewriter({
    title: "セッション一覧",
    description: "FlutterKaigi 2024のセッション一覧です",
    url: url.toString()
  });
  const baseResponse = await fetchBaseResponse(url);
  const rewrittenResponse = await new HTMLRewriter()
    .on("head", rewriter)
    .transform(baseResponse);
  return rewrittenResponse;
});

app.get(
  "/session/:id",
  vValidator(
    "param",
    v.object({
      id: v.string()
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
      .from("sessions")
      .select(
      )
      .eq("id", id)
      .maybeSingle();
    if (error) {
      return c.json({ error: error.message }, 500);
    }
    if (!data) {
      return c.json({ error: "Sponsor not found" }, 404);
    }

    const url = new URL(c.req.url);
    const description = data.description.length > 100 ? data.description.slice(0, 100) + "..." : data.description;
    const rewriter = new OgpRewriter({
      title: data.title,
      description: description,
      url: url.toString()
    });
    const baseResponse = await fetchBaseResponse(url);
    const rewrittenResponse = await new HTMLRewriter()
      .on("head", rewriter)
      .transform(baseResponse);
    return rewrittenResponse;
  }
);

app.use("*", (c, next) => {
  c.header("Cache-Control", "public, max-age=3600");
  return next();
});

app.notFound(async (c) => {
  const response = await c.env.ASSETS.fetch(c.req.raw);
  console.log(response.headers.get("Content-Type"));
  // HTMLの場合
  if (response.headers.get("Content-Type")?.includes("text/html")) {
    const url = new URL(c.req.url);
    const rewriter = new OgpRewriter({
      url: url.toString()
    });
    const baseResponse = await fetchBaseResponse(url);
    const rewrittenResponse = await new HTMLRewriter()
      .on("head", rewriter)
      .transform(baseResponse);
    return rewrittenResponse;
  }
  const url = new URL(c.req.url);
  if (response.status === 404) {
    if (url.pathname !== "/" && url.pathname !== "/index.html") {
      return c.redirect("/");
    }
  }

  return response;
});

async function fetchBaseResponse(url: URL) {
  const baseHtmlUrl = new URL("/", url);
  const baseHtml = await fetch(baseHtmlUrl);
  return baseHtml;
}

export default app;
