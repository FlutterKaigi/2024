import { logger } from "hono/logger";
import { cors } from "hono/cors";
import { secureHeaders } from "hono/secure-headers";
import { prettyJSON } from "hono/pretty-json";
import { Context, Hono } from "hono";
import { Bindings } from "./bindings";
import { HTTPException } from "hono/http-exception";
import * as v from "valibot";

import v1 from "./routes/v1/v1";
import Stripe from "stripe";
import { HTTPResponseError } from "hono/types";

const app = new Hono<{ Bindings: Bindings }>();

app.use(logger());
app.use(secureHeaders());
app.use(prettyJSON());

app.use(
  cors({
    origin: (origin) => {
      if (
        origin.startsWith("https://") &&
        origin.endsWith("flutterkaigi-ticket-2024.pages.dev")
      ) {
        return origin;
      }
      return "https://flutterkaigi-ticket-2024.pages.dev";
    }
  })
);

export const errorHandler = (
  err: Error | HTTPResponseError,
  c: Context<{ Bindings: Bindings }, any, {}>
) => {
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
};

app.onError(errorHandler);

app.route("/v1", v1);

export default app;
