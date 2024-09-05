# FlutterKaigi 2024 チケットシステムAPI

このディレクトリでは、FlutterKaigi 2024 チケットシステムのAPIを実装しています。

## 仕様

- 言語: TypeScript
- フレームワーク: Hono
- 実行環境: Cloudflare Workers
- データベース: Supabase
- 認証: Supabase Auth

## 環境構築

- [pnpm](https://pnpm.io/ja/installation) をインストールする
  - このディレクトリで `pnpm install` を実行する
- 環境変数を設定
  - 必要に応じて、`.dev.vars` 内の環境変数を変更する

```bash
cp .dev.vars.example .dev.vars
```

- ローカルでの実行

```bash
pnpm run dev
```

### デプロイ

```bash
pnpm run deploy
```
