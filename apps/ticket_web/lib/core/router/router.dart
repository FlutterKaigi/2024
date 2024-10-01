import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/pages/debug/components/navigation_debug_page.dart';
import 'package:ticket_web/pages/debug/debug_page.dart';
import 'package:ticket_web/pages/home/home_page.dart';
import 'package:ticket_web/pages/ticket/ticket_page.dart';
import 'package:ticket_web/pages/verify_purchase/verify_purchase_page.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true)
GoRouter router(RouterRef ref) {
  return GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    initialLocation: HomeRoute().location,
    redirect: (context, state) async {
      // HomeRouteは常にアクセス可能
      if (state.path == HomeRoute().location) {
        return null;
      }
      // デバッグ時はデバッグ画面にアクセス可能
      if (kDebugMode && (state.path?.contains('debug') ?? false)) {
        return null;
      }
      // それ以外はログインしている場合のみアクセス可能
      final isLoggedIn = ref.read(authNotifierProvider) != null;
      if (isLoggedIn) {
        return null;
      }
      return HomeRoute().location;
    },
  );
}

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<DebugRoute>(
      path: 'debug',
      routes: [
        TypedGoRoute<NavigationDebugRoute>(
          path: 'navigation',
        ),
      ],
    ),
    TypedGoRoute<VerifyPurchaseRoute>(
      path: 'verify_purchase',
    ),
    TypedGoRoute<TicketRoute>(
      path: 'ticket',
    ),
  ],
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
