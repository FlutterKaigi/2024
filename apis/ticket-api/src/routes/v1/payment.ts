import { vValidator } from "@hono/valibot-validator";
import { createClient } from "@supabase/supabase-js";
import { Hono } from "hono";
import Stripe from "stripe";
import type { Database } from "supabase-types";
import * as v from "valibot";
import type { Bindings } from "../../bindings";
import { authorizationSchema } from "../../util/authorizationSchema";
import { getUser, getUserWithProfile } from "../../util/user";

const app = new Hono<{ Bindings: Bindings }>();

app.get(
	"/search",
	vValidator(
		"query",
		v.object({
			id: v.string(),
		}),
	),
	vValidator("header", authorizationSchema),
	async (c) => {
		try {
			const { id } = c.req.valid("query");
			const { authorization } = c.req.valid("header");
			const supabase = createClient<Database>(
				c.env.SUPABASE_URL,
				c.env.SUPABASE_KEY,
			);
			const invoker = await getUserWithProfile(authorization, supabase);
			if (!invoker.success) {
				console.error(invoker.error);
				return c.json(
					{
						error: "Unauthorized: error while fetching invoker information",
						log: invoker.error,
					},
					401,
				);
			}
			if (invoker.profile.role !== "admin") {
				return c.json({ error: "Unauthorized: invoker role is not admin" }, 401);
			}

			const ticket = await supabase
				.from("tickets")
				.select("*")
				.eq("user_id", id)
				.maybeSingle();
			const sessionId = ticket.data?.stripe_checkout_session_id;
			if (ticket.error || sessionId === undefined || sessionId === null) {
				return c.json({ error: "Ticket not found" }, 404);
			}

			const stripe = new Stripe(c.env.STRIPE_KEY);

			const checkoutSessions = await stripe.checkout.sessions.retrieve(sessionId, {
				expand: ["payment_intent.payment_method"],
			});
			const paymentIntent = checkoutSessions.payment_intent;
			if (paymentIntent === null || typeof paymentIntent === "string") {
				return c.json({ error: "Payment intent not found" }, 404);
			}
			const paymentIntentId = paymentIntent.id;
			if (
				paymentIntent.payment_method !== null &&
				typeof paymentIntent.payment_method !== "string"
			) {
				const result = {
					id: paymentIntentId,
					amount: paymentIntent.amount,
					currency: paymentIntent.currency,
					created_at: new Date(paymentIntent.created * 1000).toISOString(),
					card_last4: paymentIntent.payment_method.card?.last4 ?? null,
				};

				return c.json(result);
			}
			return c.json({ error: "Payment method not found" }, 404);
		} catch (e) {
			console.error(JSON.stringify(e, null, 2));
			if (e instanceof Stripe.errors.StripeInvalidRequestError) {
				return c.json({ error: e.message }, 500);
			}
			return c.json({ error: e }, 500);
		}
	},
);

app.post(
	"/refund",
	vValidator(
		"query",
		v.object({
			payment_intent: v.string(),
			user_id: v.string(),
		}),
	),
	vValidator("header", authorizationSchema),
	async (c) => {
		const { authorization } = c.req.valid("header");
		const { payment_intent, user_id } = c.req.valid("query");
		const supabase = createClient<Database>(
			c.env.SUPABASE_URL,
			c.env.SUPABASE_KEY,
		);
		const invoker = await getUserWithProfile(authorization, supabase);
		if (!invoker.success) {
			return c.json({ error: "Unauthorized" }, 401);
		}
		if (invoker.profile.role !== "admin") {
			return c.json({ error: "Unauthorized" }, 401);
		}
		const userResult = await supabase
			.from("profiles")
			.select("*")
			.eq("id", user_id)
			.single();
		const user = await supabase.auth.admin.getUserById(user_id);
		if (userResult.error || user.error) {
			console.error(userResult.error, user.error);
			return c.json({
				error: userResult.error?.message || user.error?.message,
			});
		}
		const stripe = new Stripe(c.env.STRIPE_KEY);
		try {
			const refund = await stripe.refunds.create({
				payment_intent: payment_intent,
				metadata: {
					user_id,
				},
				reason: "requested_by_customer",
			});

			await fetch(c.env.SLACK_WEBHOOK_URL, {
				method: "POST",
				body: JSON.stringify({
					text: `Refunded: ${payment_intent}`,
					blocks: [
						{
							type: "header",
							text: {
								type: "plain_text",
								text: "返金が実行されました",
							},
						},
						{
							type: "context",
							elements: [
								{
									text: new Date().toLocaleString("ja-JP", {
										timeZone: "Asia/Tokyo",
									}),
									type: "mrkdwn",
								},
							],
						},
						{
							type: "divider",
						},
						{
							type: "section",
							text: {
								type: "mrkdwn",
								text: `Payment Intent: \`${payment_intent}\`\nUser ID: \`${user_id}\``,
							},
						},
						{
							type: "section",
							text: {
								type: "mrkdwn",
								text: `UserName: ${userResult.data?.name}`,
							},
						},
						{
							type: "section",
							text: {
								type: "mrkdwn",
								text: `Email: ${user.data?.user.email}`,
							},
						},
						{
							type: "context",
							elements: [
								{
									text: "Notify: <@U059EJ5AVQR>",
									type: "mrkdwn",
								},
							],
						},
						{
							type: "context",
							elements: [
								{
									text: `Invoker: ${invoker.profile.name}: ${invoker.user.id} ${invoker.user.email}`,
									type: "mrkdwn",
								},
							],
						},
					],
				}),
			});
			return c.json({ refund: refund.id });
		} catch (e) {
			console.error(e);
			await fetch(c.env.SLACK_WEBHOOK_URL, {
				method: "POST",
				body: JSON.stringify({
					text: `Error: ${e}`,
					blocks: [
						{
							type: "header",
							text: {
								type: "plain_text",
								text: "返金に失敗しました",
							},
						},
						{
							type: "section",
							text: {
								type: "mrkdwn",
								text: `Error: \n\`\`\`${e}\`\`\``,
							},
						},
					],
				}),
			});
			if (e instanceof Stripe.errors.StripeInvalidRequestError) {
				return c.json({ error: e.message });
			}
			console.error(e);
			return c.json({ error: e });
		}
	},
);

export default app;
