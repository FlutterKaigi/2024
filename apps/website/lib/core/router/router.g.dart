// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

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
          path: 'sponsor/:id',
          factory: $SponsorRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'session',
          factory: $SessionRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'session/:sessionId',
          factory: $SessionDetailsRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'job-board',
          factory: $JobBoardRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SponsorRouteExtension on SponsorRoute {
  static SponsorRoute _fromState(GoRouterState state) => SponsorRoute(
        id: int.parse(state.pathParameters['id']!),
      );

  String get location => GoRouteData.$location(
        '/sponsor/${Uri.encodeComponent(id.toString())}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SessionRouteExtension on SessionRoute {
  static SessionRoute _fromState(GoRouterState state) => const SessionRoute();

  String get location => GoRouteData.$location(
        '/session',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SessionDetailsRouteExtension on SessionDetailsRoute {
  static SessionDetailsRoute _fromState(GoRouterState state) =>
      SessionDetailsRoute(
        sessionId: state.pathParameters['sessionId']!,
      );

  String get location => GoRouteData.$location(
        '/session/${Uri.encodeComponent(sessionId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $JobBoardRouteExtension on JobBoardRoute {
  static JobBoardRoute _fromState(GoRouterState state) => const JobBoardRoute();

  String get location => GoRouteData.$location(
        '/job-board',
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

String _$goRouteHash() => r'fe6c3bec18db010f5b5abed35a23e49b3a33ec3f';

/// See also [goRoute].
@ProviderFor(goRoute)
final goRouteProvider = Provider<GoRouter>.internal(
  goRoute,
  name: r'goRouteProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouteHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouteRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
