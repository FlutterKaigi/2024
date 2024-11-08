import { Hono } from "hono";
import { vValidator } from "@hono/valibot-validator";
import * as v from "valibot";
import { createClient } from "@supabase/supabase-js";
import type { Database } from "supabase-types";
import type { Bindings } from "./bindings";
import { logger } from "hono/logger";
import ogImage from "./ogImage";
import { OgpRewriter } from "./util/ogpRewriter";
import { cache } from "hono/cache";

const app = new Hono<{ Bindings: Bindings }>();

app.route("/og", ogImage);

app.use("*", logger());
app.use(
	"*",
	cache({
		cacheName: async (c) => {
			const url = new URL(c.req.url);
			const params = url.searchParams.toString();
			return `${c.req.method} ${url.pathname}${params}`;
		},
		cacheControl: "max-age=86400", // 24 hour
	}),
);

app.get(
	"/sponsor/:id",
	vValidator(
		"param",
		v.object({
			id: v.pipe(
				v.string(),
				v.transform((input) => Number.parseInt(input)),
			),
		}),
	),
	async (c) => {
		const params = c.req.valid("param");
		const id = params.id;
		const supabase = createClient<Database>(
			c.env.SUPABASE_URL,
			c.env.SUPABASE_KEY,
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
			description: `${data.name}はFlutterKaigi 2024のスポンサーです`,
			url: url.toString(),
		});
		const baseResponse = await fetchBaseResponse(url);
		const rewrittenResponse = await new HTMLRewriter()
			.on("head", rewriter)
			.transform(baseResponse);
		return rewrittenResponse;
	},
);

app.get("/job-board", async (c) => {
	const url = new URL(c.req.url);
	const rewriter = new OgpRewriter({
		title: "ジョブボード",
		description: "FlutterKaigi 2024のジョブボードです",
		url: url.toString(),
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
		url: url.toString(),
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
			id: v.string(),
		}),
	),
	async (c) => {
		const params = c.req.valid("param");
		const id = params.id;
		const supabase = createClient<Database>(
			c.env.SUPABASE_URL,
			c.env.SUPABASE_KEY,
		);
		const { data, error } = await supabase
			.from("sessions")
			.select(`
        *,
        session_venues(name),
        session_speakers_v2 (
          speakers (
            name
          )
        )
      `)
			.eq("id", id)
			.maybeSingle();
		if (error) {
			return c.json({ error: error.message }, 500);
		}
		if (!data) {
			return c.json({ error: "Session not found" }, 404);
		}

		const url = new URL(c.req.url);
		const speakers = data.session_speakers_v2
			.map((s) => s.speakers?.name)
			.filter(Boolean)
			.join(", ");

		const sessionType = [];
		if (data.is_lightning_talk) sessionType.push("LT");
		if (data.sponsor_id) sessionType.push("スポンサーセッション");
		const sessionTypeText =
			sessionType.length > 0 ? ` | ${sessionType.join(", ")}` : "";

		const jstFormatter = new Intl.DateTimeFormat("ja-JP", {
			timeZone: "Asia/Tokyo",
			month: "long",
			day: "numeric",
			weekday: "short",
			hour: "2-digit",
			minute: "2-digit",
		});

		const jstTimeFormatter = new Intl.DateTimeFormat("ja-JP", {
			timeZone: "Asia/Tokyo",
			hour: "2-digit",
			minute: "2-digit",
		});

		const description = `${jstFormatter.format(new Date(data.starts_at))} ~ ${jstTimeFormatter.format(
			new Date(data.ends_at),
		)} | 会場: ${data.session_venues?.name}${
			speakers ? ` | 登壇者: ${speakers}` : ""
		}${sessionTypeText}`;

		const rewriter = new OgpRewriter({
			title: data.title,
			description: description,
			url: url.toString(),
		});
		const baseResponse = await fetchBaseResponse(url);
		const rewrittenResponse = await new HTMLRewriter()
			.on("head", rewriter)
			.transform(baseResponse);
		return rewrittenResponse;
	},
);

app.use("*", (c, next) => {
	c.header("Cache-Control", "public, max-age=3600");
	return next();
});

app.notFound(async (c) => {
	const response = await c.env.ASSETS.fetch(c.req.raw);
	console.log(response.headers.get("Content-Type"));
	// HTMLの場合
	if (
		response.headers.get("Content-Type")?.includes("text/html") &&
		!c.req.url.includes("ogp=false")
	) {
		const url = new URL(c.req.url);
		const rewriter = new OgpRewriter({
			url: url.toString(),
		});
		const rewrittenResponse = await new HTMLRewriter()
			.on("head", rewriter)
			.transform(response);
		return rewrittenResponse;
	}
	return response;
});

async function fetchBaseResponse(url: URL) {
	const baseHtmlUrl = new URL("/index.html?ogp=false", url);
	const baseHtml = await fetch(baseHtmlUrl);
	return baseHtml;
}

export default app;
