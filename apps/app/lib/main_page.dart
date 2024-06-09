import 'package:conference_2024_app/gen/images/assets.gen.dart';
import 'package:conference_2024_app/gen/l10n/l10n.dart';
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
            icon: Assets.images.sessions.image(width: 24, height: 24),
          ),
          NavigationDestination(
            label: l.mainPageNavigationBarLabelVenue,
            icon: Assets.images.venue.image(width: 24, height: 24),
          ),
          NavigationDestination(
            label: l.mainPageNavigationBarLabelNews,
            icon: Assets.images.news.image(width: 24, height: 24),
          ),
          NavigationDestination(
            label: l.mainPageNavigationBarLabelAbout,
            icon: Assets.images.about.image(width: 24, height: 24),
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
