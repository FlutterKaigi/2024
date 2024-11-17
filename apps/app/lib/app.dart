import 'dart:async';

import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:app_cores_core/util.dart';
import 'package:app_cores_designsystem/providers.dart';
import 'package:app_cores_designsystem/theme.dart';
import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/l10n.dart';
import 'package:app_features_about/l10n.dart';
import 'package:app_features_debug/l10n.dart';
import 'package:app_features_debug/routing.dart';
import 'package:app_features_news/l10n.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_venue/l10n.dart';
import 'package:conference_2024_app/gen/l10n/l10n.dart';
import 'package:conference_2024_app/routing/router.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerStatefulWidget {
  const App({super.key});

  @override
  ConsumerState<App> createState() => _AppState();
}

class _AppState extends ConsumerState<App> {
  @override
  void initState() {
    Future(() async {
      await initFirebaseMessaging(ref);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final localizationMode = ref.watch(localizationModeStoreProvider);
    final appLocale = switch (localizationMode) {
      LocalizationMode.system => null,
      LocalizationMode.japanese => const Locale('ja'),
      LocalizationMode.english => const Locale('en'),
    };

    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        final theme = ref.watch(themeProvider(lightDynamic));
        final darkTheme = ref.watch(darkThemeProvider(darkDynamic));
        final themeMode = ref.watch(themeModeStoreProvider);

        return MaterialApp.router(
          // Enables state restoration for descendant widgets.
          restorationScopeId: 'app',
          theme: theme,
          darkTheme: darkTheme,
          themeMode: themeMode,
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
          builder: (context, child) => Localizations.override(
            context: context,
            locale: appLocale,
            child: ScreenSizeProvider(
              screenSize: MediaQuery.sizeOf(context),
              child: AccessibilityTools(
                enableButtonsDrag: true,
                child: child,
              ),
            ),
          ),
        );
      },
    );
  }
}

class _DebugIntent extends Intent {
  const _DebugIntent();
}
