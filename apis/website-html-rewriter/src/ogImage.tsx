import { Hono } from "hono";
import { Bindings } from "./bindings";
import { ImageResponse } from "@cloudflare/pages-plugin-vercel-og/api";
import { vValidator } from "@hono/valibot-validator";
import * as v from "valibot";
import { Database } from "supabase-types";
import { createClient, SupabaseClient } from "@supabase/supabase-js";

const app = new Hono<{ Bindings: Bindings }>();

export function isOgpImageGeneratorSupported(path: string) {
  if (path.startsWith("/sponsor/")) {
    return true;
  }
  if (path === "/job-board") {
    return true;
  }
  if (path === "/session") {
    return true;
  }
  if (path.startsWith("/session/")) {
    return true;
  }
  return false;
}

app.get(
  "/",
  vValidator(
    "query",
    v.object({
      path: v.string(),
      debug: v.optional(
        v.pipe(
          v.string(),
          v.transform((s) => s === "true")
        )
      )
    })
  ),
  async (c) => {
    const { path, debug } = c.req.valid("query");
    console.error(path);
    const supabase = createClient<Database>(
      c.env.SUPABASE_URL,
      c.env.SUPABASE_KEY
    );

    // sponsor/${id}の場合
    if (path.startsWith("/sponsor/")) {
      const id = parseInt(path.split("/")[2]);

      const html = await getSponsorHtml({
        id,
        supabase,
        url: new URL(c.req.url),
      });
      return generateOgImage({
        html,
        fetcher: c.env.ASSETS,
        url: new URL(c.req.url),
        debug
      });
    }
    if (path === "/session") {
      const html = await getBaseOgImageHtml({
        url: new URL(c.req.url),
        name: "Sessions"
      });
      return generateOgImage({
        html,
        fetcher: c.env.ASSETS,
        url: new URL(c.req.url),
        debug
      });
    }
    if (path === "/job-board") {
      const html = await getBaseOgImageHtml({
        url: new URL(c.req.url),
        name: "Job Board"
      });
      return generateOgImage({ html, fetcher: c.env.ASSETS, url: new URL(c.req.url), debug });
    }
    return c.json({
      message: "This path is not supported for OGP image generation...!"
    }, 404);
  }
);

async function generateOgImage({ html, fetcher, url, debug }: { html: JSX.Element, fetcher: Fetcher, url: URL, debug?: boolean }) {
      const notoSansJPBoldResponse = await fetcher.fetch(
        new URL("worker-assets/fonts/NotoSansJP-Bold.otf", url).toString()
      );
      const notoSansJPBold = await notoSansJPBoldResponse.arrayBuffer();

      const image = new ImageResponse(html, {
        width: 1200,
        height: 630,
        debug: debug,
        fonts: [
          {
            name: "Noto Sans JP",
            weight: 700,
            data: notoSansJPBold
          }
        ]
      });
  return image;
}

async function getSponsorHtml({
  id,
  supabase,
  url,
}: {
  id: number;
  supabase: SupabaseClient<Database>;
  url: URL;
}): Promise<JSX.Element> {
  const { data, error } = await supabase
    .from("sponsors")
    .select("*")
    .eq("id", id)
    .maybeSingle();
  if (error) {
    throw new Error(error.message);
  }
  if (!data) {
    return <div>Sponsor not found</div>;
  }

  const sponsorImageUrl = await supabase.storage
    .from("sponsors")
    .getPublicUrl(data.logo_name.replaceAll(".webp", ".png"));

  const sponsorTypeLogoUrl = new URL(
    `worker-assets/sponsor_type/${data.type}.svg`,
    url
  ).toString();

  return (
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        position: "relative"
      }}
    >
      <img
        src={new URL("worker-assets/background-card.svg", url).toString()}
        width={1200}
        height={630}
        style={{
          width: "100%",
          height: "100%"
        }}
      />
      <div
        style={{
          position: "absolute",
          left: "212px",
          top: "276px",
          display: "flex",
          justifyContent: "center",
          alignItems: "center"
        }}
      >
        <img
          src={sponsorImageUrl.data.publicUrl}
          width={777}
          height={257}
          style={{
            padding: "36px",
            objectFit: "contain"
          }}
        />
      </div>
      <div
        style={{
          position: "absolute",
          right: "212px",
          top: "533px",
          display: "flex",
          justifyContent: "center",
          alignItems: "center"
        }}
      >
        <img
          src={sponsorTypeLogoUrl}
          style={{
            objectFit: "contain"
          }}
        />
      </div>
    </div>
  );
}


async function getBaseOgImageHtml({
  url,
  name
}: {
  url: URL;
  name: string;
}): Promise<JSX.Element> {

  return (
    <div
      style={{
        width: "100%",
        height: "100%",
        display: "flex",
        position: "relative"
      }}
    >
      <img
        src={new URL("worker-assets/background.svg", url).toString()}
        width={1200}
        height={630}
        style={{
          width: "100%",
          height: "100%"
        }}
      />
      <div
        style={{
          position: "absolute",
          left: "212px",
          top: "276px",
          display: "flex",
          justifyContent: "center",
          alignItems: "center"
        }}
      >
      </div>
      <div
        style={{
          position: "absolute",
          right: "212px",
          top: "533px",
          display: "flex",
          justifyContent: "center",
          alignItems: "center"
        }}
      >
      </div>

      <div
        style={{
          position: "absolute",
          right: "50%",
          top: "50%",
          transform: "translate(50%)",
          display: "flex",
          justifyContent: "center",
          alignItems: "center",
          fontSize: "128px",
          fontWeight: "bold"
        }}
      >
        {name}
      </div>
    </div>
  );
}

export default app;
