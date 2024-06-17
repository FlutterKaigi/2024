part of 'package:conference_2024_app/routing/router.dart';

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
