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

app.route("/v1", v1);

export default app;
