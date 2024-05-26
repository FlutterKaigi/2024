import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'FlutterKaigi 2024',
            ),
          ],
        ),
      ),
    );
  }
}
