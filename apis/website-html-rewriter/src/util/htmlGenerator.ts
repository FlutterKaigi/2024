export function generateHtml({
  title,
  description,
  imageUrl,
  host,
  url
}: {
  title?: string;
  description?: string;
  imageUrl?: string;
  host: string;
  url: string;
}) {
  const defaultImageUrl = `https://${host}/ogp.png`;
  const defaultTitle = "FlutterKaigi 2024";
  const defaultDescription =
    "2024年、日本国内でFlutterをメインに扱う技術カンファレンス。FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。";

  // 変更後のタイトル
  // [title]がある場合は、 `[title] | FlutterKaigi 2024` にする
  const newTitle = title ? `${title} | FlutterKaigi 2024` : defaultTitle;

  return `
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta
      name="description"
      content="${description ?? defaultDescription}"
    />

    <!-- Open Graph Protocol -->
    <meta property="og:type" content="website" />
    <meta
      property="og:description"
      content="${description ?? defaultDescription}"
    />
    <meta property="og:title" content="${newTitle}" />
    <meta property="og:url" content="${url}" />
    <meta property="og:image" content="${imageUrl ?? defaultImageUrl}" />

    <!-- Open Graph Protocol - Twitter -->
    <meta
      name="twitter:description"
      content="${description ?? defaultDescription}"
    />
    <meta name="twitter:title" content="${newTitle}" />
    <meta name="twitter:card" content="summary_large_image" />
    <!-- iOS meta tags & icons -->
    <meta name="apple-mobile-web-app-capable" content="yes" />
    <meta name="apple-mobile-web-app-status-bar-style" content="black" />
    <meta name="apple-mobile-web-app-title" content="${newTitle}" />
  </head>
</html>
`;
}
