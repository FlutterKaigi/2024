import { Hono } from "hono";
import { Bindings } from "../../bindings";
import { createClient } from "@supabase/supabase-js";
import { Database } from "../../util/supabaseSchema";
import { getUserWithProfile } from "../../util/user";
import { Stripe } from "stripe";

const admin = new Hono<{ Bindings: Bindings }>();

// roleがadminのユーザーのみがアクセスできる
admin.use("*", async (c, next) => {
  const authorization = c.req.header("Authorization");
  if (!authorization) {
    return c.text("Unauthorized", 401);
  }

  const supabase = createClient<Database>(
    c.env.SUPABASE_URL,
    c.env.SUPABASE_KEY
  );

  const result = await getUserWithProfile(authorization, supabase);

  if (result.success) {
    const role = result.profile.role;
    if (role === "admin") {
      return next();
    }
  }

  return c.json({ error: "Forbidden" }, 403);
});

admin.get("/coupons", async (c) => {
  const stripe = new Stripe(c.env.STRIPE_KEY);

  const result = await stripe.promotionCodes.list({
    limit: 100
  });

  return c.json(result.data);
});

export default admin;
