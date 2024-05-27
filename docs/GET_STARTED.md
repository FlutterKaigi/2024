## Flutter アプリケーション開発を始めよう

### 事前準備

まず、開発に必要なツールをインストールしましょう。

- 開発環境 (IDE)
  - [Visual Studio Code]
  - [IntelliJ IDEA]
  - [Android Studio]  
  - [Xcode]

- [fvm] コマンドを有効にしてください

- [melos] コマンドを有効にしてください
  - まだインストールされていない場合は、[yq] コマンドもインストールしてください。yq コマンドは、 `pubspec.lock` ファイルから melos コマンドのバージョン情報を取り出すために使います。
  - 以下のコマンドを実行して、melos コマンドをグローバルに有効にしてください。

    ```shell
    MELOS_VERSION=$(cat pubspec.lock | yq ".packages.melos.version" -r)
    fvm dart pub global activate melos $MELOS_VERSION
    ```


### Flutter SDK の設定

```shell
fvm use --force
```

このコマンドで、Flutter 開発に必要な環境をセットアップします。

### 開発環境 (IDE) を fvm で利用できるように設定する

[Visual Studio Code]を使う場合、ウィンドウをリロードしてください。

[IntelliJ IDEA] や [Android Studio]を使う場合、以下のドキュメントを参照してください。

<https://fvm.app/docs/getting_started/configuration#android-studio>

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

IntelliJ IDEA または Android Studio を使用している場合:

- `.idea/runConfigurations/~.xml` ファイルを確認してください。

<!-- Links -->

[IntelliJ IDEA]: https://www.jetbrains.com/idea/

[Android Studio]: https://developer.android.com/studio

[Visual Studio Code]: https://code.visualstudio.com/

[Xcode]: https://developer.apple.com/xcode/

[fvm]: https://fvm.app/

[melos]: https://melos.invertase.dev/

[yq]: https://github.com/mikefarah/yq
