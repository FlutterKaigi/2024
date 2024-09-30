import { Hono } from "hono";
import { Bindings } from "../../bindings";
import * as v from "valibot";
import { vValidator } from "@hono/valibot-validator";
import { createClient, SupabaseClient } from "@supabase/supabase-js";
import { Database } from "../../util/supabaseSchema";
import { getUser, getUserWithProfile } from "../../util/user";
import Stripe from "stripe";
import {
  createPromotionCode,
  promotionCodeMetadataSchema
} from "../../features/coupon/coupon";
import { authorizationSchema } from "../../util/authorizationSchema";
import { HTTPException } from "hono/http-exception";

const v1 = new Hono<{ Bindings: Bindings }>();

const verifyPurchaseSchema = v.object({
  stripe_session_id: v.string(),
  sponsor_id: v.optional(
    v.pipe(
      v.string(),
      v.custom((input) => typeof input === "string" && !isNaN(Number(input))),
      v.transform(parseInt)
    )
  ),
  session_id: v.optional(v.string())
});

v1.post(
  "/verify_purchase",
  vValidator("query", verifyPurchaseSchema),
  vValidator("header", authorizationSchema),
  async (c) => {
    const { session_id, stripe_session_id, sponsor_id } = c.req.valid("query");
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
      throw new HTTPException(500, {
        message: "Internal server error",
        cause: error
      });
    }

    if (data) {
      if (data.stripe_checkout_session_id === stripe_session_id) {
        return c.json({
          ticket: data,
          message:
            "You are already purchased ticket by the same Stripe Session."
        });
      }
      return c.json(
        {
          error: "You already have a ticket. You can't purchase ticket twice."
        },
        400
      );
    }

    // session_idに該当する購入があるかチェック
    const stripe = new Stripe(c.env.STRIPE_KEY);
    // もし該当するセッションがない場合は、例外が返ってくるのでここでは検査しない。(app.onErrorでキャッチされる)
    const { checkoutSession, promotionCodes } = await getSessionAndPromotion(
      stripe,
      stripe_session_id
    );
    const promotionCodeMetadata = promotionCodes.map((e) => e.metadata)[0];
    if (promotionCodeMetadata) {
      // プロモーションコードがある場合
      const validatedMetdata = v.parse(
        promotionCodeMetadataSchema,
        promotionCodeMetadata
      );
      const ticket = await createTicket({
        supabase,
        userId: user.id,
        promotionCodeMetadata: validatedMetdata,
        checkoutSessionId: checkoutSession.id,
        sessionId: session_id,
        sponsorId: sponsor_id
      });
      return c.json({ ticket });
    } else {
      // プロモーションコードがない場合
      // プロモーションコードがないのに、sponsor_idやsession_idが指定されている場合はエラー
      if (sponsor_id || session_id) {
        return c.json(
          {
            error:
              "You need to set session_id or/and sponsor_id when you use promotion code."
          },
          400
        );
      }
    }

    const ticket = await createTicket({
      supabase,
      userId: user.id,
      checkoutSessionId: checkoutSession.id
    });
    return c.json({ ticket });
  }
);

// プロモーションコードが有効かどうかを確認する
// プロモーションコードが有効な場合は、そのプロモーションコードのmetadataを返す
// プロモーションコードが無効な場合は、404を返す
// RateLimitの対象エンドポイント
v1.get(
  "/promotion",
  vValidator(
    "query",
    v.object({
      code: v.string()
    })
  ),
  async (c) => {
    const { code } = c.req.valid("query");
    const stripe = new Stripe(c.env.STRIPE_KEY);
    const promotionCode = await stripe.promotionCodes.list({
      code,
      limit: 1
    });
    if (promotionCode.data.length === 0) {
      return c.json({ error: "Promotion code not found" }, 404);
    }
    const metadata = promotionCode.data[0].metadata;
    const validatedMetadata = v.parse(promotionCodeMetadataSchema, metadata);
    return c.json({ metadata: validatedMetadata });
  }
);

// プロモーションコードを発行する
// プロモーションコードのメタデータと最大使用回数をJSONでPOSTしてください
// 発行前に、Authorization HeaderトークンユーザのRoleがadminであることを確認します
v1.post(
  "/promotion",
  vValidator(
    "json",
    v.object({
      metadata: promotionCodeMetadataSchema,
      maxRedemptions: v.pipe(v.number(), v.integer(), v.minValue(0))
    })
  ),
  vValidator("header", authorizationSchema),
  async (c) => {
    const { metadata, maxRedemptions } = c.req.valid("json");
    const { authorization } = c.req.valid("header");

    const supabase = createClient<Database>(
      c.env.SUPABASE_URL,
      c.env.SUPABASE_KEY
    );
    const user = await getUserWithProfile(authorization, supabase);
    if (!user.success) {
      return c.json({ error: "User not found" }, 404);
    }
    if (user.profile.role !== "admin") {
      return c.json({ error: "Unauthorized" }, 401);
    }

    const stripe = new Stripe(c.env.STRIPE_KEY);

    const promotionCode = await createPromotionCode({
      stripe,
      metadata,
      maxRedemptions
    });

    return c.json({
      id: promotionCode.id,
      code: promotionCode.code
    });
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
  if (checkoutSession.status !== "complete") {
    throw new HTTPException(400, {
      message: "Checkout session is not completed"
    });
  }
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
  checkoutSessionId,
  sessionId,
  sponsorId
}: {
  supabase: SupabaseClient<Database>;
  promotionCodeMetadata?:
    | v.InferOutput<typeof promotionCodeMetadataSchema>
    | undefined;
  userId: string;
  checkoutSessionId: string;
  sponsorId?: number | undefined;
  sessionId?: string | undefined;
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
    if (!sessionId) {
      throw new HTTPException(400, {
        message: "Session ID is required"
      });
    }
    const session = await getSessionById(supabase, sessionId);
    if (!session) {
      throw new HTTPException(404, {
        message: "Session not found"
      });
    }
    ticket.session_id = sessionId;
  }
  if (
    promotionCodeMetadata?.type === "sponsor" ||
    promotionCodeMetadata?.type === "sponsorSession"
  ) {
    if (!sponsorId) {
      throw new HTTPException(400, {
        message: "Sponsor ID is required"
      });
    }
    const sponsor = await getSponsorById(supabase, sponsorId);
    if (!sponsor) {
      throw new HTTPException(404, {
        message: "Sponsor not found"
      });
    }
    ticket.sponsor_id = sponsorId;
  }

  const { data, error } = await supabase
    .from("tickets")
    .insert(ticket)
    .select("*")
    .single();
  if (error) {
    console.log(error);
    if (
      error.code === "23505" &&
      error.message.includes("tickets_stripe_checkout_session_id_unique")
    ) {
      throw new HTTPException(400, {
        message: "This Stripe Checkout Session has already been used."
      });
    }
    throw new HTTPException(500, {
      message: "Internal server error",
      cause: error
    });
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
    case "general": {
      return "general";
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
    throw new HTTPException(500, {
      message: "Internal server error",
      cause: error
    });
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
    throw new HTTPException(500, {
      message: "Internal server error",
      cause: error
    });
  }
  return data;
}
