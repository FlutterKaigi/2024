import { type Context, Hono } from "hono";
import { cors } from "hono/cors";
import { HTTPException } from "hono/http-exception";
import { logger } from "hono/logger";
import { prettyJSON } from "hono/pretty-json";
import { secureHeaders } from "hono/secure-headers";
import * as v from "valibot";
import type { Bindings } from "./bindings";

import type { HTTPResponseError } from "hono/types";
import Stripe from "stripe";
import { scheduled } from "./features/cron/scheduled";
import v1 from "./routes/v1/v1";

const app = new Hono<{ Bindings: Bindings }>();

app.use(logger());
app.use(secureHeaders());
app.use(prettyJSON());

app.use(
	cors({
		origin: (origin) => {
			if (
				origin.startsWith("https://") &&
				(origin.endsWith("flutterkaigi-ticket-2024.pages.dev") ||
					origin.endsWith("flutterkaigi-ticket-2024-staging.pages.dev") ||
					origin.endsWith("flutterkaigi.jp"))
			) {
				return origin;
			}
			return "https://flutterkaigi-ticket-2024.pages.dev";
		},
	}),
);

app.route("/v1", v1);

export default {
	fetch: app.fetch,
	scheduled: scheduled,
};
