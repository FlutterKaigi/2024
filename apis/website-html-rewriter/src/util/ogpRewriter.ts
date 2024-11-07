import { isOgpImageGeneratorSupported } from "../ogImage";

export class OgpRewriter {
  constructor({
    title,
    description,
    imageOverride,
    url
  }: {
    title?: string | undefined;
    description?: string | undefined;
    url: string;
    imageOverride?: string | undefined;
  }) {
    if (title === undefined) {
      this.title = OgpRewriter.defaultTitle;
    } else {
      this.title = `${title} | ${OgpRewriter.defaultTitle}`;
    }
    this.description = description ?? OgpRewriter.defaultDescription;
    if (imageOverride) {
      this.image = imageOverride;
    } else {
      const urlObj = new URL(url);
      if (isOgpImageGeneratorSupported(urlObj.pathname)) {
        this.image = new URL(
          "/og-image.png?path=" + urlObj.pathname,
          urlObj
        ).toString();
      } else {
        this.image = new URL("/ogp.png", urlObj).toString();
      }

    }
    this.url = url;
  }

  title: string;
  description: string;
  image?: string | undefined;
  url: string;

  static defaultTitle = "FlutterKaigi 2024";
  static defaultDescription =
    "2024年、日本国内でFlutterをメインに扱う技術カンファレンス。FlutterやDartの深い知見を持つ開発者によるセッションを多数企画します。";

  element(e: Element) {
    // Append Title
    e.append(`<meta property="og:title" content="${this.title}" />`, {
      html: true
    });
    e.append(`<meta property="twitter:title" content="${this.title}" />`, {
      html: true
    });
    e.append(
      `<meta name="apple-mobile-web-app-title" content="${this.title}" />`,
      { html: true }
    );

    // Append Description
    e.append(
      `<meta name="twitter:description" content="${this.description}" />`,
      { html: true }
    );
    e.append(
      `<meta property="og:description" content="${this.description}" />`,
      {
        html: true
      }
    );
    e.append(
      `<meta property="twitter:description" content="${this.description}" />`,
      {
        html: true
      }
    );

    // Append Image
    if (this.image) {
      e.append(`<meta property="og:image" content="${this.image}" />`, {
        html: true
      });
    }

    // Append URL
    e.append(`<meta property="og:url" content="${this.url}" />`, {
      html: true
    });
  }
}
