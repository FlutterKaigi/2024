import { createClient } from "@supabase/supabase-js";
import { Bindings } from "../../bindings";
import { Database } from "../../util/supabaseSchema";

export async function scheduled(
  _: ScheduledEvent,
  env: Bindings,
  __: ExecutionContext
) {
  const supabase = createClient<Database>(env.SUPABASE_URL, env.SUPABASE_KEY);
  const result = await supabase
    .from("tickets")
    .select("type", { count: "exact" });
  console.log(result);

  if (!result.data) {
    return;
  }
  const grouped = result.data?.reduce((acc, curr) => {
    acc[curr.type] = (acc[curr.type] || 0) + 1;
    return acc;
  }, {} as Record<Database["public"]["Enums"]["ticket_type"], number>);

  const json = {
    text: `*Ticket Count*\n${JSON.stringify(grouped, null, 2)}`,
    blocks: [
      {
        type: "header",
        text: {
          type: "plain_text",
          text: `チケット販売状況`
        }
      },
      {
        type: "context",
        elements: [
          {
            text: new Date().toLocaleString("ja-JP", {
              timeZone: "Asia/Tokyo"
            }),
            type: "mrkdwn"
          }
        ]
      },
      {
        type: "divider"
      },
      ...Object.entries(grouped).map(([type, count]) => {
        const ticketType = type as Database["public"]["Enums"]["ticket_type"];
        return {
          type: "section",
          text: {
            type: "mrkdwn",
            text:
              `*${getTicketType(
                type as Database["public"]["Enums"]["ticket_type"]
              )}*\n` + getProgressBarText(count, getMaxCount(ticketType))
          }
        };
      })
    ]
  };

  await fetch(env.SLACK_WEBHOOK_URL, {
    method: "POST",
    body: JSON.stringify(json)
  });
}

type TicketType =
  | "スポンサーブース"
  | "招待スポンサー"
  | "個人スポンサー"
  | "一般"
  | "スピーカー"
  | "スポンサースピーカー";

const getTicketType = (
  type: Database["public"]["Enums"]["ticket_type"]
): TicketType => {
  switch (type) {
    case "sponsor_booth":
      return "スポンサーブース";
    case "sponsor_invited":
      return "招待スポンサー";
    case "individual_sponsor":
      return "個人スポンサー";
    case "general":
      return "一般";
    case "regular_speaker":
      return "スピーカー";
    case "sponsor_speaker":
      return "スポンサースピーカー";
    default: {
      const exhaustiveCheck: never = type;
      return exhaustiveCheck;
    }
  }
};

const getMaxCount = (type: Database["public"]["Enums"]["ticket_type"]) => {
  switch (type) {
    case "general":
      return 370;
    case "individual_sponsor":
      return 30;
    case "regular_speaker":
    case "sponsor_invited":
    case "sponsor_speaker":
    case "sponsor_booth":
      return undefined;
    default: {
      const exhaustiveCheck: never = type;
      return exhaustiveCheck;
    }
  }
};

const getProgressBarText = (count: number, total: number | undefined) => {
  const barLength = 30;
  if (total) {
    const ratio = count / total;
    const percentage = (ratio * 100).toFixed(2);
    const bar = "▇".repeat(Math.floor(ratio * barLength));
    const emptyBar = " ".repeat(barLength - bar.length);
    return `\`[${bar}${emptyBar}] ${percentage}%\` : ${count}枚 / ${total}枚`;
  }
  const bar = "-".repeat(barLength);
  return `\`[${bar}]\` : ${count}枚`;
};
