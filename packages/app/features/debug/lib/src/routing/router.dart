import 'package:app_features_debug/src/ui/debug_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

part 'router.g.dart';

@TypedGoRoute<DebugPageRoute>(
  path: DebugPageRoute.path,
)
class DebugPageRoute extends GoRouteData {
  const DebugPageRoute();

  static const path = '/debug';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DebugPage();
  }
}
