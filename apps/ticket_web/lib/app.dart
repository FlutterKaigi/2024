import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/provider/environment.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/core/theme/theme.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';
import 'package:ticket_web/pages/debug/debug_page.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    final environment = ref.watch(environmentProvider).environmentType;

    return TranslationProvider(
      child: MaterialApp.router(
        title: 'Ticket System',
        routerConfig: router,
        theme: lightTheme,
        builder: (context, child) {
          if (environment == EnvironmentType.production) {
            return child!;
          }
          return Banner(
            message: switch (environment) {
              EnvironmentType.development => 'DEV',
              EnvironmentType.staging => 'STG',
              EnvironmentType.production => throw UnimplementedError(),
            },
            location: BannerLocation.bottomStart,
            color: switch (environment) {
              EnvironmentType.development => Colors.blueAccent,
              EnvironmentType.staging => Colors.orange,
              EnvironmentType.production => throw UnimplementedError(),
            },
            child: Stack(
              children: [
                if (child != null) child,
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: FloatingActionButton.small(
                      onPressed: () async =>
                          router.push(const DebugRoute().location),
                      child: const Icon(
                        Icons.bug_report_outlined,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
