import { logger } from "hono/logger";
import { csrf } from "hono/csrf";
import { cors } from "hono/cors";
import { secureHeaders } from "hono/secure-headers";
import { prettyJSON } from "hono/pretty-json";
import { Hono } from "hono";
import { Bindings } from "./bindings";

import coupon from "./routes/coupon";

const app = new Hono<{ Bindings: Bindings }>();

app.use(
  "*",
  cors({
    origin: "flutterkaigi-ticket-2024.pages.dev"
  })
);
app.use(logger());
app.use(csrf());
app.use(secureHeaders());
app.use(prettyJSON());

app.route("/coupon", coupon);

export default app;
