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
        // TODO: Figma のデザインで表示位置をFixし、さらにボトムナビゲーション#83 が完了するまでデバッグ画面で動作を確認する想定です。
        body: DebugScreen(),
      ),
    );
  }
}
