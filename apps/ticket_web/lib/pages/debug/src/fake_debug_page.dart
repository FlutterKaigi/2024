import 'package:flutter/material.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError(
      'kDebugModeがtrueの時のみ利用できます',
    );
  }
}
