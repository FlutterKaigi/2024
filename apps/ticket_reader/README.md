# FlutterKaigi 2024 チケット読み取りアプリケーション

## 概要

- チケットQRコードの読み取り
- 来場者の入場処理

- 対応プラットホーム: iOS, Android
  - Bundle ID(iOS): `jp.flutterkaigi.ticket_reader`
  - Application Id(Android): `jp.flutterkaigi.ticketReader`

## ディレクトリ構成

- `core`:
  - アプリケーションの根幹となるコードを配置
  - 「アプリケーションの根幹となる」かどうかの判断は、「複数feature, ページから参照されるか」で判断しています
- `features`
  - 機能単位のまとまりを表現
  - `data`: 各種Notifier, Providerを格納します
    - ファイル名は `*_notifier.dart`, `*_provider.dart` としています
  - `ui`: 各種Widgetを格納します
    - 基本的に `[component_name].dart` というファイルの中には `[ComponentName]`というWidgetが存在するようにします

- `main.dart` エントリーポイント
  - アプリケーションの初期化処理等を行います
- `app.dart` アプリケーションのエントリーポイント
  - `MaterialApp.router` を生成します
  - Flavor ごとのバナーを表示します
