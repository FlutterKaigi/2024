## Flutter アプリケーション開発を始めよう

### 事前準備

まず、開発に必要なツールをインストールしましょう。

- 統合開発環境(IDE)をインストールしてください
  - [Visual Studio Code], [Android Studio] または [IntelliJ IDEA]
  - [Xcode]

- [fvm] コマンドを有効にしてください

- [melos] コマンドを有効にしてください
  - まだインストールされていない場合は、[yq] コマンドもインストールしてください。yq コマンドは、 `pubspec.lock` ファイルから melos コマンドのバージョン情報を取り出すために使います。
  - 以下のコマンドを実行して、melos コマンドをグローバルに有効にしてください。

    ```shell
    MELOS_VERSION=$(cat pubspec.lock | yq ".packages.melos.version" -r) && fvm dart pub global activate melos $MELOS_VERSION
    ```

### Flutter SDK の設定

```shell
fvm use --force
```

このコマンドで、プロジェクトで指定されているバージョンの Flutter SDK を設定します。

### 統合開発環境 (IDE) で FVM の利用設定

[Visual Studio Code]を使う場合、ウィンドウをリロードしてください。

[IntelliJ IDEA] や [Android Studio] を使う場合、次のように設定してください。

1. 「Languages & Frameworks」 > 「Flutter」に移動するか、「Flutter」を検索して、Flutter SDK のパスを変更します。
2. プロジェクトのルートディレクトリにあるシンボリックリンクの絶対パスをコピーします。例: `/absolute-project-path/.fvm/flutter_sdk`
3. 変更を適用します。
4. 新しい設定が反映されるようにエディタを再起動します。

### ライブラリのインストール

このコマンドを実行すると、プロジェクトに必要なライブラリが自動的にインストールされます。

```shell
melos bootstrap
```

### アプリケーションの実行

このアプリケーションを実行するための設定は既に用意されています。

以下のファイルを確認して、実行してください。

Visual Studio Code を使用している場合:

- `.vscode/launch.json` ファイルを確認してください。

<!-- Links -->

[IntelliJ IDEA]: https://www.jetbrains.com/idea/

[Android Studio]: https://developer.android.com/studio

[Visual Studio Code]: https://code.visualstudio.com/

[Xcode]: https://developer.apple.com/xcode/

[fvm]: https://fvm.app/

[melos]: https://melos.invertase.dev/

[yq]: https://github.com/mikefarah/yq
