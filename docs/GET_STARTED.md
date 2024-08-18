# FlutterKaigi の公式アプリを作り始めよう

## 前もって準備すること

### エディタや統合開発環境 (IDE) の準備

Android アプリ開発をする場合は [Android Studio]、iOS アプリ開発をする場合は [Xcode] をインストールする必要があります。

細かい設定については、次の公式ドキュメントを確認してください。

<https://docs.flutter.dev/get-started/install>

また、このプロジェクトでは [Visual Studio Code] の設定を共有していることでより開発しやすくなっています。そのため Visual Studio Code を使って開発することをおすすめします。

### Flutter SDK の準備

このプロジェクトでは [fvm] を使って Flutter SDK を管理しています。

fvm コマンドを有効にした後、次のコマンドを実行して、プロジェクトで指定されている Flutter SDK バージョンをインストールしてください。

```shell
fvm use --force
```

### エディタや統合開発環境 (IDE) への Flutter SDK の設定

Visual Studio Code を使う場合は再起動してください。

IntelliJ IDEA や Android Studio を使う場合は次のように設定してください。

1. 「Languages & Frameworks」 > 「Flutter」に移動するか、「Flutter」を検索して、Flutter SDK のパスを変更します。
2. プロジェクトのルートディレクトリにあるシンボリックリンクの絶対パスをコピーします。例: `/absolute-project-path/.fvm/flutter_sdk`
3. 変更を適用します。
4. 新しい設定が反映されるようにエディタを再起動します。

### ライブラリのインストール

このプロジェクトでは [melos] を使って複数のアプリやパッケージを管理しています。

次のコマンドを実行して melos コマンドを有効にしてください。ただし、melos コマンドのバージョン情報を `pubspec.lock` ファイルから取り出すために [yq] コマンドが必要です。

```shell
# グローバルシステムキャッシュをクリア
fvm dart pub cache clean

# バージョンを指定して melos コマンドを上書き有効化
MELOS_VERSION=$(cat pubspec.lock | yq ".packages.melos.version" -r) && \
  fvm dart pub global activate melos $MELOS_VERSION --overwrite
```

その後、次のコマンドを実行して、必要なライブラリをインストールします。

```shell
melos bootstrap
```

### 気をつけること

melos コマンドを実行時にエラーになる場合は、プロジェクトで使っている Dart SDK のバージョンとグローバルで有効になっている Dart SDK のバージョンが同じになっているか確認してください。

## アプリの実行

Visual Studio Code を使う場合は `.vscode/launch.json` ファイルで起動設定を共有しているため、次の公式ドキュメントを参考にしてアプリを実行してください。

<https://code.visualstudio.com/docs/editor/debugging#_launch-configurations>

IntelliJ IDEA や Android Studio を使う場合はまだ起動設定を共有していないため、次の公式ドキュメントを参考にしてアプリを実行してください。

<https://developer.android.com/studio/run/rundebugconfig>

<!-- Links -->

[Android Studio]: https://developer.android.com/studio

[Visual Studio Code]: https://code.visualstudio.com/

[Xcode]: https://developer.apple.com/xcode/

[fvm]: https://fvm.app/

[melos]: https://melos.invertase.dev/

[yq]: https://github.com/mikefarah/yq
