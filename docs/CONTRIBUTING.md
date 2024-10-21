# プロジェクトへの貢献方法

FlutterKaigi プロジェクトへの貢献をお待ちしています！以下に、貢献する際の手順と注意点をまとめました。

## 始める前に

### 開発環境のセットアップ

[GET_STARTED.md] を読んで、開発環境をセットアップしてください。

### プロジェクト構造の理解

[ARCHITECTURE.md] を読んで、プロジェクトの構造について理解を深めてください。

## 貢献の流れ

1. 取り組みたいタスクを見つける
   - Issues を確認し、`contributions welcome` ラベルがついているものを探してください。
   - 難易度は `difficulty/easy`、`difficulty/medium`、`difficulty/hard` というラベルで表しています。

2. 作業を始める
   - 選んだ Issue に「🙋」とコメントして、作業を始めることを伝えてください。
   - プロジェクトのリポジトリを自分の GitHub アカウントにフォークしてください。
   - フォークしたリポジトリで新しいブランチを作成し、作業を開始してください。

3. コードを書く
   - プロジェクトのコーディング規約に従ってください。
   - コーディング規約に沿っているか確認するために、以下のコマンドを実行してください：

     ```shell
     melos analyze
     melos run custom_lint
     ```

4. プルリクエストを作成する
   - 作業が完了したら、フォークしたリポジトリから元のリポジトリに対してプルリクエストを作成してください。
   - プルリクエストの説明は [PULL_REQUEST_TEMPLATE.md] のテンプレートに従って記載してください。

5. レビューを受ける
   - レビュアーからのフィードバックに基づいて、必要な修正を行ってください。

6. マージされるのを待つ
   - すべての確認が完了すると、プルリクエストがマージされます。

## 注意点

- コミットメッセージは明確で簡潔に書いてください。
- 大きな変更を行う場合は、事前に Issue で相談してください。

みなさんの貢献を楽しみにしています！

<!-- Links -->

[GET_STARTED.md]: ./GET_STARTED.md

[ARCHITECTURE.md]: ./ARCHITECTURE.md

[PULL_REQUEST_TEMPLATE.md]: https://github.com/FlutterKaigi/2024/blob/main/.github/PULL_REQUEST_TEMPLATE.md?plain=1
