import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

final class RouteDropdownMenu extends HookWidget {
  const RouteDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final routeBases = router.configuration.routes;
    final dropdownMenuEntries = useMemoized(
      () {
        final goRoutes = routeBases.toGoRoutes();
        return goRoutes
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
            .toList();
      },
      routeBases,
    );
    return LayoutBuilder(
      builder: (context, constraints) {
        return DropdownMenu<GoRoute>(
          width: constraints.maxWidth,
          dropdownMenuEntries: dropdownMenuEntries,
          onSelected: (goRoute) {
            if (goRoute == null) {
              return;
            }
            router.go(goRoute.path);
          },
        );
      },
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
