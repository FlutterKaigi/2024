import { Hono } from "hono";
import type { Bindings } from "../../bindings";
import { vValidator } from "@hono/valibot-validator";
import { authorizationSchema } from "../../util/authorizationSchema";
import { createClient } from "@supabase/supabase-js";
import type { Database } from "supabase-types";
import { getUser } from "../../util/user";
import { HTTPException } from "hono/http-exception";
import { PKPass, type Barcode } from "passkit-generator";
import background from "../../../assets/background.png";
import icon from "../../../assets/icon.png";

const app = new Hono<{ Bindings: Bindings }>();

app.get(
	"/pass.pkpass",
	vValidator("header", authorizationSchema),
	async (c) => {
		const { authorization } = c.req.valid("header");

		const supabase = createClient<Database>(
			c.env.SUPABASE_URL,
			c.env.SUPABASE_KEY,
		);
		const user = await getUser(authorization, supabase);

		if (!user) {
			return c.json({ error: "User not found" }, 404);
		}

		// 既にチケットを所有しているかどうかチェック
		const { data, error } = await supabase
			.from("tickets")
			.select("*")
			.eq("user_id", user.id)
			.maybeSingle();

		if (error) {
			throw new HTTPException(500, {
				message: "Internal server error",
				cause: error,
			});
		}
	},
);

app.get("/example.pkpass", async (c) => {
	const pass = new PKPass(
		{
			"strip@3x.png": Buffer.from(background),
			"logo@3x.png": Buffer.from(icon),
			"icon@3x.png": Buffer.from(icon),
		},
		{
			wwdr: atob(c.env.WWDR),
			signerCert: atob(c.env.SIGNER_CERTIFICATE),
			signerKey: atob(c.env.SIGNER_KEY),
		},
		{
			description: "FlutterKaigi 2024 Ticket",
			organizationName: "FlutterKaigi 2024",
			passTypeIdentifier: "pass.jp.co.flutterkaigi.2024.ticket",
			teamIdentifier: "6JT949BA2M",
			serialNumber: "1234567890",
			contactVenueWebsite: "https://flutterkaigi.jp",
			backgroundColor: "rgb(255,255,255)",
			foregroundColor: "rgb(0,0,0)",
			labelColor: "rgb(0,0,0)",
		},
	);

	pass.type = "eventTicket";
	pass.headerFields.push({
		key: "header1",
		value: "ATTENDEE",
		label: "TYPE",
	});
	pass.secondaryFields.push({
		key: "name",
		value: "YOUR NAME HERE",
		label: "NAME",
	});
	pass.auxiliaryFields.push({
		key: "starts-at",
		value: "2024-11-21T10:00+09:00",
		label: "STARTS-AT",
		timeStyle: "PKDateStyleShort",
		dateStyle: "PKDateStyleMedium",
	});
	pass.backFields.push(
		...[
			{
				key: "user-id",
				value: "b98325e2-c4a0-4061-a0c1-93fc9b6cf246",
				label: "USER-ID",
			},
			{
				key: "ticket-id",
				value: "a08f5f0c-ad42-458e-a3a9-ad95b44374e1",
				label: "TICKET-ID",
			},
		],
	);

	pass.setBarcodes(
		...[
			{
				format: "PKBarcodeFormatQR",
				message: "a08f5f0c-ad42-458e-a3a9-ad95b44374e1",
				altText: "入場用QRコード",
			} satisfies Barcode,
		],
	);

	return new Response(pass.getAsBuffer(), {
		headers: {
			"Content-type": pass.mimeType,
			"Content-disposition": "attachment; filename=example.pkpass",
		},
	});
});

export default app;
