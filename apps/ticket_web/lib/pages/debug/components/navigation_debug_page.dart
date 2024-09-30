import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// GoRouterのデバッグページ
/// 株式会社ゆめみのテンプレートプロジェクトより引用
/// (MIT License)
/// https://github.com/yumemi-inc/flutter-mobile-project-template/blob/5ecc5a2290bc4bdec723e6ce8aacacc42c1db6a5/packages/features/debug_mode/lib/src/ui/navigation_debug_page.dart
class NavigationDebugRoute extends GoRouteData {
  const NavigationDebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const NavigationDebugPage();
  }
}

class NavigationDebugPage extends ConsumerWidget {
  const NavigationDebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text('Debug Page'),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: RouteDropdownMenu(),
            ),
          ),
        ],
      ),
    );
  }
}

final class RouteDropdownMenu extends HookWidget {
  const RouteDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter.of(context);
    final routeBases = router.configuration.routes;
    final dropdownMenuEntries = useMemoized(
      () {
        final paths = routeBases.toPaths();
        return paths
            .map(
              (path) {
                // デバッグ関連のルートは除外する
                if (path.contains('debug')) {
                  return null;
                }
                return DropdownMenuEntry<String>(
                  value: path,
                  label: path,
                );
              },
            )
            .nonNulls
            .toList();
      },
      routeBases,
    );
    final pathEditController = useTextEditingController();

    // DropdownMenu を親の横幅に合わせる
    return Column(
      children: [
        LayoutBuilder(
          builder: (context, constraints) {
            return DropdownMenu<String>(
              width: constraints.maxWidth,
              dropdownMenuEntries: dropdownMenuEntries,
              // hintText: l.routeDropDownHintText,
              onSelected: (selectedPath) {
                if (selectedPath == null) {
                  return;
                }
                pathEditController.text = selectedPath;
              },
            );
          },
        ),
        const SizedBox.square(dimension: 16),
        TextField(
          controller: pathEditController,
          decoration: const InputDecoration(
            label: Text('Path'),
            border: OutlineInputBorder(),
          ),
          maxLines: 2,
        ),
        const SizedBox.square(dimension: 16),
        ElevatedButton(
          onPressed: () {
            final path = pathEditController.text;
            router.go(path);
          },
          child: const Text('Go'),
        ),
      ],
    );
  }
}

extension _ToPaths on List<RouteBase> {
  List<String> toPaths([String? parentPath]) {
    final routes = <String>[];
    for (final routeBase in this) {
      switch (routeBase) {
        case GoRoute():
          var path = routeBase.path;
          if (parentPath != null) {
            path = '$parentPath/$path';
          }

          routes.add(path);

          final childRouteBases = routeBase.routes;
          if (childRouteBases.isNotEmpty) {
            routes.addAll(childRouteBases.toPaths(path));
          }
        case ShellRoute() || StatefulShellRoute():
          routes.addAll(routeBase.routes.toPaths());
      }
    }
    return routes;
  }
}
