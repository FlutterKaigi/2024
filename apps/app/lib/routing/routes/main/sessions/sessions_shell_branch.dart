part of 'package:conference_2024_app/routing/router.dart';

const sessionsShellBranch = TypedStatefulShellBranch<SessionsShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<SessionsPageRoute>(
      path: SessionsPageRoute.path,
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
    // TODO: 後で `const SessionsPage()` に差し替える。
    return const Center(
      child: Text('Sessions Page'),
    );
  }
}
