import 'package:conference_2024_app/widget/debug_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        // TODO: ボトムナビゲーション#83が終わるまでデバッグ画面で動作確認する想定です。
        body: DebugScreen(),
      ),
    );
  }
}
