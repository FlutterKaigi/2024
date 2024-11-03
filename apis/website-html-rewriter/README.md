# Website HTML Rewriter

Cloudflare Pages Functionsを用いて、URL Pathに応じたHTMLを返すAPIを作成しました。

## 使用技術

- Cloudflare Pages Functions

## デプロイ

- Cloudflare Pagesにデプロイする時は、Pageの本体(=ASSET)とFunctionsの両方を一緒にデプロイする必要があります
  - そのため、デプロイ前に 単純な静的ファイルとして提供したいファイル群を `public` ディレクトリに配置する必要があります
- デプロイコマンド

  ```bash
  pnpm run deploy
  ```
