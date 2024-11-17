import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/provider/environment.dart';
import 'package:ticket_reader/core/router/router.dart';
import 'package:ticket_reader/core/theme/theme.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      theme: lightTheme,
      darkTheme: darkTheme,
      title: 'Ticket Reader',
      builder: (context, child) => Stack(
        fit: StackFit.expand,
        children: [
          if (child != null) child,
          const _FlavorBanner(),
        ],
      ),
    );
  }
}

class _FlavorBanner extends ConsumerWidget {
  const _FlavorBanner();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final environment = ref.watch(environmentProvider);
    final flavor = environment.environmentType;

    final color = switch (flavor) {
      EnvironmentType.development => Colors.blue,
      EnvironmentType.staging => Colors.orange,
      EnvironmentType.production => Colors.green,
    };

    return Banner(
      message: flavor.name.toUpperCase(),
      location: BannerLocation.bottomStart,
      color: color,
    );
  }
}
