import { Hono } from "hono";
import type { Bindings } from "./bindings";
import { ImageResponse } from "@cloudflare/pages-plugin-vercel-og/api";
import { vValidator } from "@hono/valibot-validator";
import * as v from "valibot";
import type { Database } from "supabase-types";
import { createClient, type SupabaseClient } from "@supabase/supabase-js";

import { cache } from 'hono/cache'

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
      const id = Number.parseInt(path.split("/")[2]);

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
    if (path.startsWith("/session/")) {
      const id = path.split("/")[2];
      const html = await getSessionDetailOgImageHtml({
        id,
        supabase,
        url: new URL(c.req.url),
      });
      return generateOgImage({ html, fetcher: c.env.ASSETS, url: new URL(c.req.url), debug });
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

async function getSessionDetailOgImageHtml({
  id,
  supabase,
  url
 }: {
  id: string;
  supabase: SupabaseClient<Database>;
  url: URL;
  }) {
  const { data, error } = await supabase
    .from("sessions")
    .select(`
      *,
      session_speakers_v2 (
        speaker_id,
        speakers (*)
      )
    `)
    .eq("id", id)
    .maybeSingle();
  if (error) {
    throw new Error(error.message);
  }
  if (!data) {
    return <div>Session not found</div>;
  }
  console.log(data);

  const speakers = data.session_speakers_v2.map((sessionSpeaker) => {
    if (!sessionSpeaker.speakers) {
      return null;
    }
    const avatarName = sessionSpeaker.speakers?.avatar_name;
    if (!avatarName) {
      return null;
    }

    return {
      ...sessionSpeaker,
      speakerLogoUrl: supabase.storage.from("speakers").getPublicUrl(avatarName.replaceAll(".webp", ".png"))
    };
  }).filter((speaker) => speaker !== null);

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
        alt=""
        src={new URL("worker-assets/background-card-large.svg", url).toString()}
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
          left: "135px",
          top: "210px",
          width: "930px",
          height: "368px",
          display: "flex",
          flexDirection: "column",
          gap: "24px",
          padding: "32px"
        }}
      >
        <div
          style={{
            fontSize: data.title.length > 30
              ? "32px"
              : "40px",
            fontWeight: "bold",
            color: "#333333",
            maxHeight: "134px",
            display: "flex",
            flexDirection: "column"
          }}
        >
          {data.title}
        </div>

        <div
          style={{
            display: "flex",
            gap: "24px",
            alignItems: "center"
          }}
        >
          {speakers.map((speaker, index) => (
            <div
              key={speaker.speaker_id}
              style={{
                display: "flex",
                alignItems: "center",
                gap: "12px"
              }}
            >
              <img
                alt=""
                src={speaker.speakerLogoUrl.data.publicUrl}
                width={80}
                height={80}
                style={{
                  borderRadius: "50%",
                  objectFit: "cover"
                }}
              />
              <div
                style={{
                  fontSize: "24px",
                  fontWeight: "bold",
                  color: "#333333"
                }}
              >
                {speaker.speakers?.name ?? "Unknown"}
              </div>
            </div>
          ))}
        </div>

        <div
          style={{
            fontSize: "32px",
            color: "#666666",
            display: "flex",
            gap: "16px",
            alignItems: "center"
          }}
        >
          {new Intl.DateTimeFormat("ja-JP", {
            timeZone: "Asia/Tokyo",
            month: "long",
            day: "numeric",
            weekday: "short",
            hour: "2-digit",
            minute: "2-digit"
          }).format(new Date(data.starts_at))}
          <span style={{ color: "#888888" }}>-</span>
          {new Intl.DateTimeFormat("ja-JP", {
            timeZone: "Asia/Tokyo",
            hour: "2-digit",
            minute: "2-digit"
          }).format(new Date(data.ends_at))}
          {data.is_lightning_talk && (
            <div
              style={{
                backgroundColor: "#FF3355",
                color: "white",
                fontSize: "24px",
                padding: "4px 12px",
                borderRadius: "8px",
                fontWeight: "bold",
                textAlign: "center"
              }}
            >
              LT
            </div>
          )}
          {data.sponsor_id && (
            <div
              style={{
                backgroundColor: "#4A90E2",
                color: "white",
                fontSize: "24px",
                padding: "4px 12px",
                borderRadius: "8px",
                fontWeight: "bold",
                textAlign: "center"
              }}
            >
              SPONSOR SESSION
            </div>
          )}
        </div>
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
      />
    </div>
  );
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
        alt=""
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
          alt=""
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
          alt=""
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
        alt=""
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
