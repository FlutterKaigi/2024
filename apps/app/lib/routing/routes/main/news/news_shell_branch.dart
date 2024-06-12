part of 'package:conference_2024_app/routing/router.dart';

const newsShellBranch = TypedStatefulShellBranch<NewsShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<NewsPageRoute>(
      path: NewsPageRoute.path,
    ),
  ],
);

class NewsShellBranch extends StatefulShellBranchData {
  const NewsShellBranch();
}

class NewsPageRoute extends GoRouteData {
  const NewsPageRoute();

  static const path = '/news';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NewsPage();
  }
}
