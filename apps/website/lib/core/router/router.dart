import 'package:conference_2024_website/ui/pages/home/home_page.dart';
import 'package:conference_2024_website/ui/pages/sponsor/sponsor_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter goRoute(Ref ref) => GoRouter(
      debugLogDiagnostics: kDebugMode,
      routes: $appRoutes,
    );

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<SponsorRoute>(
      path: 'sponsor/:id',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
