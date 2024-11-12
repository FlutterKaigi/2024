import { vValidator } from "@hono/valibot-validator";
import { createClient } from "@supabase/supabase-js";
import { Hono } from "hono";
import { Data } from "hono/dist/types/context";
import { HTTPException } from "hono/http-exception";
import { type Barcode, PKPass } from "passkit-generator";
import type { Database } from "supabase-types";
import background from "../../../assets/background.png";
import icon from "../../../assets/icon.png";
import type { Bindings } from "../../bindings";
import { authorizationSchema } from "../../util/authorizationSchema";
import { getUser, getUserWithProfile } from "../../util/user";

const app = new Hono<{ Bindings: Bindings }>();

app.get(
	"/pass.pkpass",
	vValidator("query", authorizationSchema),
	async (c) => {
		const supabase = createClient<Database>(
			c.env.SUPABASE_URL,
			c.env.SUPABASE_KEY,
		);
		const { authorization } = c.req.valid("query");
		const user = await getUserWithProfile(authorization, supabase);
		if (!user || !user.success) {
			return c.json({ error: "Unauthorized" }, 401);
		}
		const { data: ticket, error } = await supabase
			.from("tickets")
			.select()
			.eq("user_id", user.profile.id)
			.maybeSingle();
		if (error) {
			return c.json({ error: "Internal Server Error" }, 500);
		}
		if (!ticket) {
			return c.json({ error: "Ticket not found" }, 404);
		}

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
				serialNumber: ticket.id,
				contactVenueWebsite: "https://flutterkaigi.jp",
				backgroundColor: "rgb(255,255,255)",
				foregroundColor: "rgb(0,0,0)",
				labelColor: "rgb(0,0,0)",
				associatedStoreIdentifiers: [6737717479],
				// チケットの共有は禁止
				sharingProhibited: true,
				semantics: {
					eventName: "FlutterKaigi 2024",
					eventStartDate: "2024-11-21T09:30+09:00",
					eventEndDate: "2024-11-22T18:10+09:00",
					venueRegionName: "東京都江東区",
					venueName: "有明セントラルタワー ホール&カンファレンス",
					venueLocation: {
						latitude: 35.6321071,
						longitude: 139.7937274,
					},
					eventType: "PKEventTypeConference",
				},
			},
		);
		pass.type = "eventTicket";

		// 2024/11/21 9:30 JST: 入場開始
		pass.setRelevantDate(new Date("2024-11-21T09:30+09:00"));
		// 2024/11/22 18:10 JST: 閉会
		pass.setExpirationDate(new Date("2024-11-22T18:10+09:00"));

		pass.setLocations({
			latitude: 35.6321071,
			longitude: 139.7937274,
			relevantText: "有明セントラルタワー ホール&カンファレンス",
		});

		let type: string;
		switch (ticket.type) {
			case "general": {
				type = "ATTENDEE";
				break;
			}
			case "individual_sponsor": {
				type = "PERSONAL SPONSOR";
				break;
			}
			case "regular_speaker": {
				type = "SPEAKER";
				break;
			}
			case "sponsor_speaker": {
				type = "SPONSOR SPEAKER";
				break;
			}
			case "sponsor_booth": {
				type = "SPONSOR BOOTH";
				break;
			}
			case "sponsor_invited": {
				type = "SPONSOR INVITED";
				break;
			}
			default: {
				const _exhaustiveCheck: never = ticket.type;
				return _exhaustiveCheck;
			}
		}

		pass.headerFields.push({
			key: "type",
			label: "TYPE",
			value: type,
		});
		pass.secondaryFields.push({
			key: "location",
			label: "LOCATION",
			value: "有明セントラルタワー ホール&カンファレンス",
			attributedValue:
				"<a href='https://flutterkaigi.jp'>https://flutterkaigi.jp</a>",
		});
		pass.auxiliaryFields.push({
			key: "starts-at",
			value: "2024-11-21T10:00+09:00",
			label: "STARTS-AT",
			timeStyle: "PKDateStyleShort",
			dateStyle: "PKDateStyleFull",
		});
		pass.auxiliaryFields.push(
			...[{
			key: "name",
			value: user.profile.name,
			label: "NAME",
		},{
			key: "section",
			value: ticket.section_id,
			label: "ネームプレート 区画ID",
		}]
		);
		pass.backFields.push(
			...[
				{
					"key": "section-id",
					label: "ネームプレート 区画ID",
					value: ticket.section_id,
				},
				{
					key: "user-id",
					label: "ユーザID",
					value: user.profile.id,
				},
				{
					key: "ticket-id",
					label: "チケットID",
					value: ticket.id,
				},
				{
					key: "payment-id",
					label: "決済ID",
					value: ticket.stripe_checkout_session_id ?? "不明",
				},
			],
		);

		pass.setBarcodes(
			...[
				{
					format: "PKBarcodeFormatQR",
					// Ticket ID
					message: ticket.id,
					altText: `U-${ticket.id.slice(0, 8)}`,
				} satisfies Barcode,
			],
		);
		pass.preferredStyleSchemes = ["posterEventTicket", "eventTicket"];

		return new Response(pass.getAsBuffer(), {
			headers: {
				"Content-type": pass.mimeType,
				"Content-disposition": "attachment; filename=pass.pkpass",
			},
		});
	},
);

export default app;
