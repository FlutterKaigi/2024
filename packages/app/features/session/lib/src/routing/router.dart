import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:packages_app_features_session/ui.dart';

part 'router.g.dart';

@TypedGoRoute<SessionPageRoute>(
  path: SessionPageRoute.path,
)
class SessionPageRoute extends GoRouteData {
  const SessionPageRoute({
    required this.sessionId,
  });

  static const path = ':sessionId';

  final String sessionId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SessionPage(
      sessionId: sessionId,
    );
  }
}

@TypedGoRoute<BookmarkedSessionsPageRoute>(
  path: BookmarkedSessionsPageRoute.path,
)
class BookmarkedSessionsPageRoute extends GoRouteData {
  const BookmarkedSessionsPageRoute();

  static const path = 'bookmarked_sessions';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BookmarkedSessionsPage();
  }
}
