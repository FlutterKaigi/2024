# プロジェクト構成

このプロジェクトではいくつかのアプリやパッケージを [Melos] を使って管理しています。

## ディレクトリ構成

ディレクトリ構成は次の通りです。

```text
.
├── apps
│   ├── app
│   ├── ticket_web
│   └── website
├── packages
│   ├── app
│   └── common
├── melos.yaml
├── pubspec.yaml
└── README.md
```

### `apps` ディレクトリの中身の説明

| ディレクトリ名 | 説明 |
| --- | --- |
| app | FlutterKaigi 2024 公式アプリ |
| ticket_web | [FlutterKaigi 2024 公式チケットサイト] |
| website | [FlutterKaigi 2024 公式ウェブサイト] |

※ FlutterKaigi 2024 公式アプリは、カンファレンスが始まる前に App Store と Google Play Store で公開される予定です。

### `packages` ディレクトリの中身の説明

| ディレクトリ名 | 説明 |
| --- | --- |
| app | FlutterKaigi 2024 公式アプリで使ういくつかのパッケージ |
| common | すべてのアプリで使ういくつかのパッケージ |

<!-- Links -->

[Melos]: https://melos.invertase.dev/~melos-latest

[FlutterKaigi 2024 公式チケットサイト]: https://flutterkaigi-ticket-2024.pages.dev

[FlutterKaigi 2024 公式ウェブサイト]: https://flutterkaigi.jp/2024
