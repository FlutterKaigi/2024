import Stripe from "stripe";
import * as v from "valibot";

const StringInt = v.pipe(
  v.string(),
  v.custom((input) => typeof input === "string" && !isNaN(Number(input))),
  v.transform(Number),
  v.integer()
);

export const promotionCodeMetadataSchema = v.variant("type", [
  // 一般来場者用
  v.object({
    type: v.literal("general")
  }),
  // 一般セッション登壇者
  v.object({
    type: v.literal("session")
  }),
  // スポンサー招待
  v.object({
    type: v.literal("sponsor")
  }),
  // スポンサーセッション登壇者
  v.object({
    type: v.literal("sponsorSession")
  })
]);

// 100%割引のプロモーションコードを発行する関数
// [maxRedemptions]回使用できる
export async function createPromotionCode({
  stripe,
  metadata,
  maxRedemptions
}: {
  stripe: Stripe;
  metadata: v.InferOutput<typeof promotionCodeMetadataSchema>;
  maxRedemptions: number;
}): Promise<Stripe.PromotionCode> {
  const couponId = "N2L6fdRd";

  const uuid = crypto.randomUUID();
  // UUIDの頭6文字をsuffixにする
  const suffix = uuid.slice(0, 6);
  const prefix = getPromotionCodePrefix(metadata);

  const code = `${prefix}${suffix}`.toUpperCase();

  // see https://docs.stripe.com/api/promotion_codes/create
  const promotionCode = await stripe.promotionCodes.create({
    coupon: couponId,
    code,
    max_redemptions: maxRedemptions,
    metadata,
    active: true
  });

  return promotionCode;
}

function getPromotionCodePrefix(
  metadata: v.InferOutput<typeof promotionCodeMetadataSchema>
) {
  switch (metadata.type) {
    case "session": {
      return "SE";
    }
    case "sponsor": {
      return "SP";
    }
    case "sponsorSession": {
      return "SS";
    }
    case "general": {
      return "GN";
    }
    default: {
      const _exhausted: never = metadata;
      return _exhausted;
    }
  }
}
