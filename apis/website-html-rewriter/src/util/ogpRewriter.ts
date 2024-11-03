export class OgpRewriter {
  constructor({
    title,
    description,
    imageOverride,
    url
  }: {
    title?: string | undefined;
    description: string;
    url: string;
    imageOverride?: string | undefined;
  }) {
    if (title === undefined) {
      this.title = OgpRewriter.defaultTitle;
    } else {
      this.title = `${title} | ${OgpRewriter.defaultTitle}`;
    }
    this.description = description;
    if (imageOverride) {
      this.image = imageOverride;
    } else {
      const urlObj = new URL(url);
      this.image = new URL(
        "/og-image.png?path=" + urlObj.pathname,
        urlObj
      ).toString();
    }
    this.url = url;
  }

  title: string;
  description: string;
  image?: string | undefined;
  url: string;

  static defaultTitle = "FlutterKaigi 2024";

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
