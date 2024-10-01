// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'debug',
          factory: $DebugRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'navigation',
              factory: $NavigationDebugRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'verify_purchase',
          factory: $VerifyPurchaseRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'ticket',
          factory: $TicketRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $DebugRouteExtension on DebugRoute {
  static DebugRoute _fromState(GoRouterState state) => const DebugRoute();

  String get location => GoRouteData.$location(
        '/debug',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $NavigationDebugRouteExtension on NavigationDebugRoute {
  static NavigationDebugRoute _fromState(GoRouterState state) =>
      const NavigationDebugRoute();

  String get location => GoRouteData.$location(
        '/debug/navigation',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $VerifyPurchaseRouteExtension on VerifyPurchaseRoute {
  static VerifyPurchaseRoute _fromState(GoRouterState state) =>
      const VerifyPurchaseRoute();

  String get location => GoRouteData.$location(
        '/verify_purchase',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TicketRouteExtension on TicketRoute {
  static TicketRoute _fromState(GoRouterState state) => const TicketRoute();

  String get location => GoRouteData.$location(
        '/ticket',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routerHash() => r'0d6ef3abe57bf9dcaaf62c96bf1f49872e1ef244';

/// See also [router].
@ProviderFor(router)
final routerProvider = Provider<GoRouter>.internal(
  router,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
