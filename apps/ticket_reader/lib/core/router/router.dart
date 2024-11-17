import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_reader/features/auth/data/auth_notifier.dart';
import 'package:ticket_reader/pages/home_page.dart';
import 'package:ticket_reader/pages/login_page.dart';
import 'package:ticket_reader/pages/ticket_reader_page.dart';
import 'package:ticket_reader/pages/user_search_page.dart';

part 'router.g.dart';

@Riverpod(keepAlive: true, dependencies: [AuthNotifier])
GoRouter router(Ref ref) {
  final isLoggedIn =
      ref.watch(authNotifierProvider.select((notifier) => notifier != null));

  return GoRouter(
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    initialLocation:
        isLoggedIn ? const HomeRoute().location : const LoginRoute().location,
    redirect: (context, state) {
      // 未ログインの場合は、ログイン画面にリダイレクト
      if (!isLoggedIn && state.path != const LoginRoute().location) {
        return const LoginRoute().location;
      }
      return null;
    },
  );
}

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<ReaderRoute>(path: '/reader'),
    TypedGoRoute<UserSearchRoute>(path: '/user-search'),
  ],
)
class HomeRoute extends GoRouteData {
  const HomeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<LoginRoute>(
  path: '/login',
)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginPage();
  }
}
