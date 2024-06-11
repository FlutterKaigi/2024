import 'package:flutter/material.dart';

/// 遷移処理の動作検証をするための画面
class DebugScreen extends StatelessWidget {
  const DebugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Hello World!'),
          const SizedBox(
            height: 24,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).push(
                MaterialPageRoute<void>(
                  builder: (context) => const LicensePage(
                    applicationName: 'FlutterKaigi 2024 Official App',
                  ),
                ),
              );
            },
            child: const Text('ライセンスページ'),
          ),
        ],
      ),
    );
  }
}
