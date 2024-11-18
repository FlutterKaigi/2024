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
			email: v.pipe(v.string(), v.email()),
		}),
	),
	vValidator("header", authorizationSchema),
	async (c) => {
		const { email } = c.req.valid("query");
		const { authorization } = c.req.valid("header");
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

		const stripe = new Stripe(c.env.STRIPE_KEY);
		const customers = await stripe.customers.search({
			query: `email:\'${email}\'`,
			limit: 100,
		});
		const payments = [];
		for (const customer of customers.data) {
			const paymentIntents = await stripe.paymentIntents.search({
				query: `customer:\'${customer.id}\'`,
			});
			payments.push(...paymentIntents.data);
		}
		const results = payments.map((payment) => ({
			payment_intent: payment.id,
			amount: payment.amount,
			created_at: new Date(payment.created * 1000).toISOString(),
		}));
		return c.json({ results });
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
