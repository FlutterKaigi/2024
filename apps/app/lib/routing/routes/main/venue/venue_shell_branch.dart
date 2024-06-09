part of 'package:conference_2024_app/routing/router.dart';

const venueShellBranch = TypedStatefulShellBranch<VenueShellBranch>(
  routes: <TypedRoute<RouteData>>[
    TypedGoRoute<VenuePageRoute>(
      path: VenuePageRoute.path,
    ),
  ],
);

class VenueShellBranch extends StatefulShellBranchData {
  const VenueShellBranch();
}

class VenuePageRoute extends GoRouteData {
  const VenuePageRoute();

  static const path = '/venue';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    // TODO: 後で `const VenuePage()` に差し替える。
    return const Center(
      child: Text('Venue Page'),
    );
  }
}
