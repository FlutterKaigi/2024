part of 'package:conference_2024_app/routing/router.dart';

class DebugPageRoute extends GoRouteData {
  const DebugPageRoute();

  static const path = 'debug';

  static final $parentNavigatorKey = _rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DebugPage();
  }
}
