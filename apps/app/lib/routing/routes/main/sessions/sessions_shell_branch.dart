part of 'package:conference_2024_app/routing/router.dart';

const sessionsShellBranch = TypedStatefulShellBranch<SessionsShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SessionsPageRoute>(
      path: SessionsPageRoute.path,
      routes: [
        TypedGoRoute<SessionPageRoute>(
          path: SessionPageRoute.path,
        ),
      ],
    ),
  ],
);

class SessionsShellBranch extends StatefulShellBranchData {
  const SessionsShellBranch();
}

class SessionsPageRoute extends GoRouteData {
  const SessionsPageRoute();

  static const path = '/sessions';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SessionsPage();
  }
}

class SessionPageRoute extends GoRouteData {
  const SessionPageRoute({
    required this.sessionId,
  });

  static const path = ':sessionId';

  static final $parentNavigatorKey = _rootNavigatorKey;

  final String sessionId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SessionPage(
      sessionId: sessionId,
    );
  }
}
