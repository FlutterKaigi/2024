// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $sessionPageRoute,
      $bookmarkedSessionsPageRoute,
    ];

RouteBase get $sessionPageRoute => GoRouteData.$route(
      path: ':sessionId',
      factory: $SessionPageRouteExtension._fromState,
    );

extension $SessionPageRouteExtension on SessionPageRoute {
  static SessionPageRoute _fromState(GoRouterState state) => SessionPageRoute(
        sessionId: state.pathParameters['sessionId']!,
      );

  String get location => GoRouteData.$location(
        '${Uri.encodeComponent(sessionId)}',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $bookmarkedSessionsPageRoute => GoRouteData.$route(
      path: 'bookmarked_sessions',
      factory: $BookmarkedSessionsPageRouteExtension._fromState,
    );

extension $BookmarkedSessionsPageRouteExtension on BookmarkedSessionsPageRoute {
  static BookmarkedSessionsPageRoute _fromState(GoRouterState state) =>
      const BookmarkedSessionsPageRoute();

  String get location => GoRouteData.$location(
        'bookmarked_sessions',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
