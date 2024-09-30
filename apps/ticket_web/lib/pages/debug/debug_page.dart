// コンパイル後のバイナリを小さくするために、
// kDebugMode が true の場合のみ FakeDebugPage を import する
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ticket_web/pages/debug/src/components/_fake_navigation_debug_page.dart'
    if (kDebugMode) 'src/components/navigation_debug_page.dart'
    show NavigationDebugPage;
import 'package:ticket_web/pages/debug/src/fake_debug_page.dart'
    if (kDebugMode) 'src/debug_page.dart' show DebugPage;

export 'src/components/_fake_navigation_debug_page.dart'
    if (kDebugMode) 'src/components/navigation_debug_page.dart'
    show NavigationDebugPage;
export 'src/fake_debug_page.dart' if (kDebugMode) 'src/debug_page.dart'
    show DebugPage;

class DebugRoute extends GoRouteData {
  const DebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DebugPage();
  }
}

class NavigationDebugRoute extends GoRouteData {
  const NavigationDebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NavigationDebugPage();
  }
}
