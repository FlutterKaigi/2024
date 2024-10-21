# プロジェクトへの貢献方法

FlutterKaigi プロジェクトへの貢献をお待ちしています！

以下に、貢献する際の手順と注意点をまとめました。

## はじめに

### 開発環境を準備する

[GET_STARTED.md] を読んで、開発環境を準備してください。

### プロジェクトの構造を理解する

[ARCHITECTURE.md] を読んで、プロジェクトの構造について理解を深めてください。

## 貢献の流れ

1. 取り組むタスクを見つける
   - [Welcome Contributions] という GitHub プロジェクトで、ステータスが Ready の Issue の中から探してください。[FlutterKaigi/2024 の Issues] には FlutterKaigi スタッフ向けの Issue も含まれているので注意してください。
   - タスクの難しさは `difficulty/easy`（簡単）、`difficulty/medium`（普通）、`difficulty/hard`（難しい）というラベルで示しています。

2. 作業を始める
   - 選んだ Issue に「🙋」とコメントして、作業を始めることを伝えてください。
   - プロジェクトのリポジトリを自分の GitHub アカウントにフォーク（コピー）してください。
   - フォークしたリポジトリで新しいブランチを作り、作業を始めてください。

3. コードを書く
   - プロジェクトのコーディングルールを守って書いてください。
   - コーディングルールを守っているか確認するために、以下のコマンドを実行してください：

     ```shell
     melos analyze
     melos run custom_lint
     ```

4. プルリクエストを作る
   - 作業が終わったら、フォークしたリポジトリから元のリポジトリに対してプルリクエストを作ってください。
   - プルリクエストの説明は [PULL_REQUEST_TEMPLATE.md] のテンプレートに沿って書いてください。

5. レビューを受ける
   - レビュアーからのコメントに基づいて、必要な修正を行ってください。

6. マージされるのを待つ
   - すべての確認が終わると、プルリクエストがマージ（取り込まれる）されます。

## 注意点

- コミットメッセージは分かりやすく短く書いてください。
- 大きな変更を行う場合は、事前に Issue で相談してください。

みなさんの貢献を楽しみにしています！

<!-- Links -->

[GET_STARTED.md]: ./GET_STARTED.md

[ARCHITECTURE.md]: ./ARCHITECTURE.md

[PULL_REQUEST_TEMPLATE.md]: https://github.com/FlutterKaigi/2024/blob/main/.github/PULL_REQUEST_TEMPLATE.md?plain=1

[Welcome Contributions]: https://github.com/orgs/FlutterKaigi/projects/11/views/1

[FlutterKaigi/2024 の Issues]: https://github.com/FlutterKaigi/2024/issues
