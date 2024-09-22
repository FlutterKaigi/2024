import { logger } from "hono/logger";
import { cors } from "hono/cors";
import { secureHeaders } from "hono/secure-headers";
import { prettyJSON } from "hono/pretty-json";
import { Hono } from "hono";
import { Bindings } from "./bindings";
import { HTTPException } from "hono/http-exception";
import * as v from "valibot";

import v1 from "./routes/v1/v1";
import Stripe from "stripe";
import { WorkersKVStore } from "@hono-rate-limiter/cloudflare";
import { rateLimiter } from "hono-rate-limiter";

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

export function limiter(kv: KVNamespace) {
  return rateLimiter<{ Bindings: Bindings }>({
    windowMs: 1 * 60 * 1000, // 1 minute
    limit: 10, // 1分間に10回まで
    standardHeaders: "draft-7",
    keyGenerator: (c) => c.req.header("cf-connecting-ip") ?? "",
    store: new WorkersKVStore({ namespace: kv }),
    skipSuccessfulRequests: true,
    message: (c) => {
      return "Too many requests. Please try again after 1 minute.";
    }
  });
}

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

app.route("/v1", v1);

export default app;
