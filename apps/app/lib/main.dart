import 'dart:async';

import 'package:conference_2024_app/gen/l10n/l10n.dart';
import 'package:conference_2024_app/routing/router.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_debug/l10n.dart';
import 'package:packages_app_features_debug/routing.dart';
import 'package:packages_app_features_news/l10n.dart';
import 'package:packages_app_features_session/l10n.dart';
import 'package:packages_app_features_venue/l10n.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MainApp(),
    ),
  );
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(
      routerConfig: router,
      localizationsDelegates: const [
        ...L10n.localizationsDelegates,
        ...L10nAbout.localizationsDelegates,
        ...L10nNews.localizationsDelegates,
        ...L10nSession.localizationsDelegates,
        ...L10nVenue.localizationsDelegates,
        ...L10nDebug.localizationsDelegates,
      ],
      supportedLocales: const [
        ...L10n.supportedLocales,
        ...L10nAbout.supportedLocales,
        ...L10nNews.supportedLocales,
        ...L10nSession.supportedLocales,
        ...L10nVenue.supportedLocales,
        ...L10nDebug.supportedLocales,
      ],
      shortcuts: kDebugMode
          ? {
              LogicalKeySet(
                LogicalKeyboardKey.shift,
                LogicalKeyboardKey.keyD,
              ): const _DebugIntent(),
            }
          : null,
      actions: kDebugMode
          ? <Type, Action<Intent>>{
              _DebugIntent: CallbackAction<_DebugIntent>(
                onInvoke: (_) => unawaited(
                  router.push(const DebugPageRoute().location),
                ),
              ),
            }
          : null,
    );
  }
}

class _DebugIntent extends Intent {
  const _DebugIntent();
}
