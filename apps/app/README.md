# FlutterKaigi 2024 公式アプリ

まずはじめに [プロジェクトの README] をご覧ください。

## 環境分け

`--dart-define-from-file` オプションを使用して、環境ごとに異なる設定を行っています。

環境は２つ用意しており、設定ファイルは [`defines/`] に配置しています。

| 環境名 | 設定ファイル |
| - | - |
| 開発環境 | [`development.env`] |
| 本番環境 | [`production.env`] |

## 環境ごとの役割

### 開発環境

データベースの構造などを変更しないといけない機能の開発や修正を行う際に使用します。主に FlutterKaigi スタッフがこの環境で開発を行うことを想定しています。

次のように Supabase のローカル環境を構築し、開発を行います。

1. [Docker Desktop] や [OrbStack] などを使用して Docker daemon を起動
1. `supabase start` を実行して Supabase のローカル環境を起動
1. データベースの構造などを変更
1. `supabase reset` などを実行してデータベースの変更を反映
1. アプリを開発環境で起動

なお、必要なコマンドは VS Code のタスクとして実行できるように [`tasks.json`] に設定していますので、VS Code を使用している場合はそちらを利用してください。

参考資料:

- [Supabase DOCS Local Development & CLI]
- [Integrate with External Tools via Tasks]

### 本番環境

基本的にはこちらで開発を行います。

本番の Web API を使用するため、過度に API のリクエストを行わないように注意してください。

<!-- Links -->

[プロジェクトの README]: ../../README.md

[`defines/`]: ./defines/

[`development.env`]: ./defines/development.env

[`production.env`]: ./defines/production.env

[Docker Desktop]: https://docs.docker.com/desktop/

[OrbStack]: https://orbstack.dev/

[`tasks.json`]: ../../.vscode/tasks.json

[Supabase DOCS Local Development & CLI]: https://supabase.io/docs/guides/local-development

[Integrate with External Tools via Tasks]: https://code.visualstudio.com/docs/editor/tasks
