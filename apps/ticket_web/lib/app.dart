import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/core/theme/theme.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return TranslationProvider(
      child: MaterialApp.router(
        title: 'Ticket System',
        routerConfig: router,
        theme: lightTheme(),
      ),
    );
  }
}
