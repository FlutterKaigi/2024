# FlutterKaigi 2024 チケット購入サイト

## 概要

- チケット購入サイト
- チケットの購入状況の確認
- ネームプレート用の情報入力

## 多言語化対応

- 対応言語: 日本語(メイン)・英語

### 更新方法

1. `lib/i18n/strings.i18n.json` もしくは `lib/i18n/strings_en.i18n.json` を更新します。

1. [build_runner](https://pub.dev/packages/build_runner)を使用して、ローカライズファイルを再生成します。

```bash
fvm flutter pub run build_runner build
```
