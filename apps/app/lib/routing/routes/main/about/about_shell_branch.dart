part of 'package:conference_2024_app/routing/router.dart';

const aboutShellBranch = TypedStatefulShellBranch<AboutShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<AboutPageRoute>(
      path: AboutPageRoute.path,
    ),
  ],
);

class AboutShellBranch extends StatefulShellBranchData {
  const AboutShellBranch();
}

class AboutPageRoute extends GoRouteData {
  const AboutPageRoute();

  static const path = '/about';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return ProviderScope(
      overrides: [
        aboutPageNavigatorProvider.overrideWithValue(AboutPageNavigatorImpl()),
      ],
      child: const AboutPage(),
    );
  }
}
