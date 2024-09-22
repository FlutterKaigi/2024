import { logger } from "hono/logger";
import { cors } from "hono/cors";
import { secureHeaders } from "hono/secure-headers";
import { prettyJSON } from "hono/pretty-json";
import { Hono } from "hono";
import { Bindings } from "./bindings";
import { HTTPException } from "hono/http-exception";
import * as v from "valibot";

import admin from "./routes/admin/admin";
import v1 from "./routes/v1/v1";
import Stripe from "stripe";

const app = new Hono<{ Bindings: Bindings }>();

app.use(
  "*",
  cors({
    origin: "flutterkaigi-ticket-2024.pages.dev"
  })
);
app.use(logger());
app.use(secureHeaders());
app.use(prettyJSON());

app.onError((err, c) => {
  if (err instanceof HTTPException) {
    return err.getResponse();
  }
  if (err instanceof Stripe.errors.StripeInvalidRequestError) {
    return c.json({ code: err.code, error: err.message }, 400);
  }
  if (err instanceof v.ValiError) {
    return c.json({ error: err.message }, 400);
  }
  if (err instanceof Object && err.message) {
    return c.json({ error: err.message }, 500);
  }

  return c.json({ error: err }, 500);
});

app.route("/admin", admin);
app.route("/v1", v1);

export default app;
