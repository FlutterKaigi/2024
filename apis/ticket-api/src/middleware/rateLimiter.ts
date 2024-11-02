import { Bindings } from "../bindings";
import { WorkersKVStore } from "@hono-rate-limiter/cloudflare";
import { rateLimiter as rateLimiterMiddleware } from "hono-rate-limiter";

export function rateLimiter(kv: KVNamespace) {
  return rateLimiterMiddleware<{ Bindings: Bindings }>({
    windowMs: 5 * 60 * 1000, // 5 minute
    limit: 20, // 5分間に20回まで
    keyGenerator: (c) => c.req.header("cf-connecting-ip") ?? "",
    store: new WorkersKVStore({ namespace: kv }),
    skipSuccessfulRequests: true,
    message: (c) => {
      return "Too many requests. Please try again after 1 minute.";
    }
  });
}
