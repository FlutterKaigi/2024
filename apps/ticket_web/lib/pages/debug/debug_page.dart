// コンパイル後のバイナリを小さくするために、
// kDebugMode が true の場合のみ FakeDebugPage を import する
export 'src/fake_debug_page.dart' if (kDebugMode) 'src/debug_page.dart'
    show DebugPage;
