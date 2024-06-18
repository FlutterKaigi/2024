import 'package:conference_2024_app/main_page.dart';
import 'package:conference_2024_app/routing/navigators/about/about_page_navigator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_app_cores_navigation/about/providers.dart';
import 'package:packages_app_features_about/ui.dart';
import 'package:packages_app_features_debug/routing.dart';
import 'package:packages_app_features_news/ui.dart';
import 'package:packages_app_features_session/ui.dart';
import 'package:packages_app_features_venue/ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'routes/main/main_page_shell_route.dart';
part 'routes/main/about/about_shell_branch.dart';
part 'routes/main/news/news_shell_branch.dart';
part 'routes/main/sessions/sessions_shell_branch.dart';
part 'routes/main/venue/venue_shell_branch.dart';
part 'router.g.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      ...$appRoutes,
      $debugPageRoute,
    ],
    debugLogDiagnostics: kDebugMode,
    initialLocation: SessionsPageRoute.path,
  );
}
