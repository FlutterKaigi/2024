import { logger } from "hono/logger";
import { cors } from "hono/cors";
import { secureHeaders } from "hono/secure-headers";
import { prettyJSON } from "hono/pretty-json";
import { Hono } from "hono";
import { Bindings } from "./bindings";

import { getUserWithProfile } from "./util/user";
import { createClient } from "@supabase/supabase-js";
import { Database } from "./util/supabaseSchema";

const app = new Hono<{ Bindings: Bindings }>();

app.use(
  "*",
  cors({
    origin: "flutterkaigi-ticket-2024.pages.dev"
  })
);
app.use(logger());
app.use(secureHeaders());
app.use(prettyJSON());

// MEMO(YumNumm): 動作検証用のテストエンドポイント
// TODO(YumNumm): 削除する
app.get("/auth", async (c) => {
  const authorization = c.req.header("Authorization");
  if (!authorization) {
    return c.text("Unauthorized", 401);
  }

  const supabase = createClient<Database>(
    c.env.SUPABASE_URL,
    c.env.SUPABASE_KEY
  );

  const result = await getUserWithProfile(authorization, supabase);

  return c.json(result);
});

export default app;
