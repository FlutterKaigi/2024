// ignore_for_file: do_not_use_environment

import 'dart:async';

import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:app_cores_core/providers.dart';
import 'package:app_cores_designsystem/theme.dart';
import 'package:app_cores_settings/l10n.dart';
import 'package:common_data/supabase_initializer.dart';
import 'package:conference_2024_app/gen/l10n/l10n.dart';
import 'package:conference_2024_app/routing/router.dart';
import 'package:dynamic_color/dynamic_color.dart';
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

void main() async {
  final supabaseInitializer = SupabaseInitializer(
    url: const String.fromEnvironment('SUPABASE_URL'),
    anonKey: const String.fromEnvironment('SUPABASE_ANON_KEY'),
  );
  await supabaseInitializer.initialize();

  await initSharedPreferencesInstance();

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
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final theme = ref.watch(themeProvider(lightDynamic));
        final darkTheme = ref.watch(darkThemeProvider(darkDynamic));

        return MaterialApp.router(
          // Enables state restoration for descendant widgets.
          restorationScopeId: 'app',
          theme: theme,
          darkTheme: darkTheme,
          routerConfig: router,
          localizationsDelegates: const [
            ...L10n.localizationsDelegates,
            ...L10nAbout.localizationsDelegates,
            ...L10nNews.localizationsDelegates,
            ...L10nSession.localizationsDelegates,
            ...L10nVenue.localizationsDelegates,
            ...L10nDebug.localizationsDelegates,
            ...L10nSettings.localizationsDelegates,
          ],
          supportedLocales: const [
            ...L10n.supportedLocales,
            ...L10nAbout.supportedLocales,
            ...L10nNews.supportedLocales,
            ...L10nSession.supportedLocales,
            ...L10nVenue.supportedLocales,
            ...L10nDebug.supportedLocales,
            ...L10nSettings.supportedLocales,
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
          builder: (context, child) => AccessibilityTools(
            enableButtonsDrag: true,
            child: child,
          ),
        );
      },
    );
  }
}

class _DebugIntent extends Intent {
  const _DebugIntent();
}
