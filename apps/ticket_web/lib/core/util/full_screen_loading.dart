import 'dart:async';

import 'package:flutter/material.dart';

class FullScreenCircularProgressIndicator extends StatelessWidget {
  const FullScreenCircularProgressIndicator({super.key});

  static Future<T> showUntil<T>(
    BuildContext context,
    Future<T> Function() function,
  ) async {
    unawaited(
      showDialog<void>(
        context: context,
        builder: (context) => const FullScreenCircularProgressIndicator(),
      ),
    );
    final T result;
    try {
      result = await function();
    } finally {
      if (context.mounted && Navigator.of(context).canPop()) {
        Navigator.of(context).pop();
      }
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator.adaptive();
  }
}
