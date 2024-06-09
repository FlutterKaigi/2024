import 'package:conference_2024_app/src/gen/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainPage extends StatelessWidget {
  const MainPage({
    required this.navigationShell,
    super.key,
  });

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final l = L10n.of(context);
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: [
          NavigationDestination(
            label: l.mainPageNavigationBarLabelSessions,
            icon: const Icon(Icons.info),
          ),
          NavigationDestination(
            label: l.mainPageNavigationBarLabelVenue,
            icon: const Icon(Icons.info),
          ),
          NavigationDestination(
            label: l.mainPageNavigationBarLabelNews,
            icon: const Icon(Icons.info),
          ),
          NavigationDestination(
            label: l.mainPageNavigationBarLabelAbout,
            icon: const Icon(Icons.info),
          ),
        ],
        onDestinationSelected: (index) {
          navigationShell.goBranch(
            index,
            initialLocation: index == navigationShell.currentIndex,
          );
        },
      ),
    );
  }
}
