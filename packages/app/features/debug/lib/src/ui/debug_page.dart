import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final goRoutes = router.configuration.routes.toGoRoutes();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar.large(
            title: Text('Debug Page'),
          ),
          SliverToBoxAdapter(
            child: DropdownMenu<GoRoute>(
              dropdownMenuEntries: goRoutes
                  .map(
                    (goRoute) {
                      // debug routes are excluded
                      if (goRoute.path.contains('debug')) {
                        return null;
                      }
                      return DropdownMenuEntry<GoRoute>(
                        value: goRoute,
                        label: goRoute.path,
                      );
                    },
                  )
                  .nonNulls
                  .toList(),
              onSelected: (goRoute) {
                if (goRoute == null) {
                  return;
                }
                router.go(goRoute.path);
              },
            ),
          ),
        ],
      ),
    );
  }
}

extension _ToGoRoutes on List<RouteBase> {
  List<GoRoute> toGoRoutes() {
    final goRoutes = <GoRoute>[];
    for (final route in this) {
      switch (route) {
        case GoRoute():
          final childRoutes = route.routes;
          if (childRoutes.isEmpty) {
            goRoutes.add(route);
          } else {
            goRoutes.addAll(childRoutes.toGoRoutes());
          }
        case ShellRoute() || StatefulShellRoute():
          goRoutes.addAll(route.routes.toGoRoutes());
      }
    }
    return goRoutes;
  }
}
