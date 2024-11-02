import { Hono } from "hono";
import { generateHtml } from "./util/htmlGenerator";

const app = new Hono();

app.notFound(async (c) => {
  const url = c.req.url;
  const host = new URL(url).host;

  const html = await generateHtml({
    host,
    url
  });
  return c.html(html);
});

export default app;
