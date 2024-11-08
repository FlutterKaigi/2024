# Website HTML Rewriter

Cloudflare Pages Functionsを用いて、URL Pathに応じたHTMLを返すAPIを作成しました。

## 使用技術

- Cloudflare Pages Functions

## デプロイ

- Cloudflare Pagesにデプロイする時は、Pageの本体(=ASSET)とFunctionsの両方を一緒にデプロイする必要があります
  - そのため、デプロイ前に 単純な静的ファイルとして提供したいファイル群を `public` ディレクトリに配置する必要があります
- デプロイコマンド

  ```bash
  pnpm run deploy-staging

  pnpm run deploy-production
  ```

## デバッグ

- ローカルでデバッグする場合は、`pnpm build`でビルドしてから`pnpm dev`でデバッグします
  - 事前に`public`ディレクトリに`FlutterKaigi/2024`の`apps/website`をビルドしたものを配置する必要があります
    - 配置しない場合、APIは正常に動作しない可能性があります
- ファイルの変更を監視して自動でビルドする場合は以下のコマンドを実行します
  - `pnpm build --watch` でビルドを監視
  - 別のターミナルで `pnpm dev` を実行
