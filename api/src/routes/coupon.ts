import { Hono } from "hono";
import { Bindings } from "../bindings";
import { createClient } from "@supabase/supabase-js";
import { getUserWithProfile } from "../util/user";
import { Database } from "../util/supabaseSchema";

const app = new Hono<{ Bindings: Bindings }>();

app.get("/", async (c) => {
  const supabase = createClient<Database>(
    c.env.SUPABASE_URL,
    c.env.SUPABASE_KEY
  );

  const authorizationHeader = c.req.header("Authorization");
  if (!authorizationHeader) {
    return c.json({ error: "Unauthorized" }, 401);
  }
  const user = await getUserWithProfile(authorizationHeader, supabase);
  if (!user.success) {
    return c.json({ error: "Unauthorized" }, 401);
  }
});

export default app;
