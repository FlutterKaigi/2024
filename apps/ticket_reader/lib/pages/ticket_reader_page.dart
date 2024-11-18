import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ReaderRoute extends GoRouteData {
  const ReaderRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ReaderPage();
  }
}

class ReaderPage extends StatelessWidget {
  const ReaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Scanner'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends HookConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useMemoized(
      () => MobileScannerController(
        detectionSpeed: DetectionSpeed.noDuplicates,
      ),
    );

    return MobileScanner(
      onDetect: (barcodes) {
        log('Detected: ${barcodes.barcodes}');
        final rawValue = barcodes.barcodes.first.rawValue;
        log('Detected: ${rawValue?.length}');
        if (rawValue != null && rawValue.length == 36) {
          unawaited(HapticFeedback.lightImpact());
        }
      },
      controller: controller,
      errorBuilder: (_, exception, __) {
        return Center(
          child: Text('Error: $exception'),
        );
      },
    );
  }
}
