import { Bindings } from "../bindings";
import { WorkersKVStore } from "@hono-rate-limiter/cloudflare";
import { rateLimiter as rateLimiterMiddleware } from "hono-rate-limiter";

export function rateLimiter(kv: KVNamespace) {
  return rateLimiterMiddleware<{ Bindings: Bindings }>({
    windowMs: 1 * 60 * 1000, // 1 minute
    limit: 10, // 1分間に10回まで
    standardHeaders: "draft-7",
    keyGenerator: (c) => c.req.header("cf-connecting-ip") ?? "",
    store: new WorkersKVStore({ namespace: kv }),
    skipSuccessfulRequests: true,
    message: (c) => {
      return "Too many requests. Please try again after 1 minute.";
    }
  });
}
