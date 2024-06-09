part of 'package:conference_2024_app/routing/router.dart';

@TypedStatefulShellRoute<MainPageShellRoute>(
  branches: [
    sessionsShellBranch,
    venueShellBranch,
    newsShellBranch,
    aboutShellBranch,
  ],
)
class MainPageShellRoute extends StatefulShellRouteData {
  const MainPageShellRoute();

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return MainPage(navigationShell: navigationShell);
  }
}
