import { Hono } from "hono";
import { Bindings } from "../../bindings";
import * as v from "valibot";
import { vValidator } from "@hono/valibot-validator";
import { createClient, SupabaseClient } from "@supabase/supabase-js";
import { Database } from "../../util/supabaseSchema";
import { getUser } from "../../util/user";
import Stripe from "stripe";
import {
  createPromotionCode,
  promotionCodeMetadataSchema
} from "../../features/coupon/coupon";
import { authorizationSchema } from "../../util/authorizationSchema";

const v1 = new Hono<{ Bindings: Bindings }>();

const verifyPurchaseSchema = v.object({
  session_id: v.string()
});

v1.post(
  "/verify_purchase",
  vValidator("query", verifyPurchaseSchema),
  vValidator("header", authorizationSchema),
  async (c) => {
    const { session_id } = c.req.valid("query");
    const { authorization } = c.req.valid("header");

    const supabase = createClient<Database>(
      c.env.SUPABASE_URL,
      c.env.SUPABASE_KEY
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
      throw error;
    }

    if (data) {
      return c.json({ error: "Already purchased" }, 400);
    }

    // session_idに該当する購入があるかチェック
    const stripe = new Stripe(c.env.STRIPE_KEY);
    // もし該当するセッションがない場合は、例外が返ってくるのでここでは検査しない。(app.onErrorでキャッチされる)
    const { checkoutSession, promotionCodes } = await getSessionAndPromotion(
      stripe,
      session_id
    );
    const promotionCodeMetadata = promotionCodes.map((e) => e.metadata)[0];
    if (promotionCodeMetadata) {
      const validatedMetdata = v.parse(
        promotionCodeMetadataSchema,
        promotionCodeMetadata
      );
      const ticket = await createTicket({
        supabase,
        userId: user.id,
        promotionCodeMetadata: validatedMetdata,
        checkoutSessionId: checkoutSession.id
      });
      return c.json({ ticket });
    }

    const ticket = await createTicket({
      supabase,
      userId: user.id,
      checkoutSessionId: checkoutSession.id
    });
    return c.json({ ticket });
  }
);

export default v1;

// チェックアウトセッションとその中のプロモーションコードを取得
// プロモーションコードがない場合は空配列を返す
async function getSessionAndPromotion(
  stripe: Stripe,
  sessionId: string
): Promise<{
  checkoutSession: Stripe.Checkout.Session;
  promotionCodes: Stripe.PromotionCode[];
}> {
  const checkoutSession = await stripe.checkout.sessions.retrieve(sessionId, {
    expand: ["total_details.breakdown"]
  });
  const promotionCodePromises =
    checkoutSession.total_details?.breakdown?.discounts
      .map((e) => e.discount.promotion_code)
      .filter((e) => typeof e === "string")
      .map((e) => stripe.promotionCodes.retrieve(e)) ?? [];

  const promotionCodes = await Promise.all(promotionCodePromises);

  return { checkoutSession, promotionCodes };
}

// チケットを作成する
// 事前に、対象ユーザに対してチケットが発行済みではないことを確認してください
async function createTicket({
  supabase,
  promotionCodeMetadata,
  userId,
  checkoutSessionId
}: {
  supabase: SupabaseClient<Database>;
  promotionCodeMetadata?:
    | v.InferOutput<typeof promotionCodeMetadataSchema>
    | undefined;
  userId: string;
  checkoutSessionId: string;
}): Promise<Database["public"]["Tables"]["tickets"]["Row"]> {
  const type = getTicketType(promotionCodeMetadata);
  let ticket: Database["public"]["Tables"]["tickets"]["Insert"] = {
    type,
    user_id: userId,
    stripe_checkout_session_id: checkoutSessionId
  };
  if (
    promotionCodeMetadata?.type === "session" ||
    promotionCodeMetadata?.type === "sponsorSession"
  ) {
    const id = promotionCodeMetadata.sessionId;
    const session = await getSessionById(supabase, id);
    if (!session) {
      throw new Error("Session not found");
    }
    ticket.session_id = id;
  }
  if (
    promotionCodeMetadata?.type === "sponsor" ||
    promotionCodeMetadata?.type === "sponsorSession"
  ) {
    const id = promotionCodeMetadata.sponsorId;
    const sponsor = await getSponsorById(supabase, id);
    if (!sponsor) {
      throw new Error("Sponsor not found");
    }
    ticket.sponsor_id = id;
  }

  const { data, error } = await supabase
    .from("tickets")
    .insert(ticket)
    .select("*")
    .single();
  if (error) {
    throw error;
  }
  return data;
}

// プロモーションコードのmetadataからチケットのtypeを取得
// プロモーションコードのmetadataがない場合は、一般来場者なので`general`を返す
function getTicketType(
  promotionCodeMetadata:
    | v.InferOutput<typeof promotionCodeMetadataSchema>
    | undefined
): Database["public"]["Enums"]["ticket_type"] {
  if (!promotionCodeMetadata) {
    return "general";
  }
  switch (promotionCodeMetadata.type) {
    case "session": {
      return "regular_speaker";
    }
    case "sponsor": {
      return "sponsor_invited";
    }
    case "sponsorSession": {
      return "sponsor_speaker";
    }
    default: {
      const _exhaustiveCheck: never = promotionCodeMetadata;
      return _exhaustiveCheck;
    }
  }
}

// スポンサーIDに該当するスポンサーを取得
async function getSponsorById(
  supabase: SupabaseClient<Database>,
  sponsorId: number
): Promise<Database["public"]["Tables"]["sponsors"]["Row"] | null> {
  const { data, error } = await supabase
    .from("sponsors")
    .select("*")
    .eq("id", sponsorId)
    .maybeSingle();
  if (error) {
    throw error;
  }
  return data;
}

// セッションIDに該当するセッションを取得
async function getSessionById(
  supabase: SupabaseClient<Database>,
  sessionId: string
): Promise<Database["public"]["Tables"]["sessions"]["Row"] | null> {
  const { data, error } = await supabase
    .from("sessions")
    .select("*")
    .eq("id", sessionId)
    .maybeSingle();
  if (error) {
    throw error;
  }
  return data;
}
