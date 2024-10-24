import 'dart:async';

import 'package:app_cores_settings/routing.dart';
import 'package:app_features_about/ui.dart';
import 'package:app_features_debug/routing.dart';
import 'package:app_features_news/ui.dart';
import 'package:app_features_session/routing.dart';
import 'package:app_features_session/ui.dart';
import 'package:app_features_venue/ui.dart';
import 'package:conference_2024_app/main_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';
part 'routes/main/about/about_shell_branch.dart';
part 'routes/main/main_page_shell_route.dart';
part 'routes/main/news/news_shell_branch.dart';
part 'routes/main/sessions/sessions_shell_branch.dart';
part 'routes/main/venue/venue_shell_branch.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(Ref ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      ...$appRoutes,
      $settingsPageRoute,
      ...sessionRoutes,
      if (kDebugMode) $debugPageRoute,
    ],
    debugLogDiagnostics: kDebugMode,
    initialLocation: SessionsPageRoute.path,
  );
}
