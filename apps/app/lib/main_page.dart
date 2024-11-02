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
    final isMobile = MediaQuery.of(context).size.width < 960;

    final destinations = [
      NavigationDestination(
        label: l.mainPageNavigationBarLabelSessions,
        icon: const Icon(Icons.calendar_month_outlined),
        selectedIcon: const Icon(Icons.calendar_month),
      ),
      NavigationDestination(
        label: l.mainPageNavigationBarLabelVenue,
        icon: const Icon(Icons.meeting_room_outlined),
        selectedIcon: const Icon(Icons.meeting_room),
      ),
      NavigationDestination(
        label: l.mainPageNavigationBarLabelNews,
        icon: const Icon(Icons.notifications_outlined),
        selectedIcon: const Icon(Icons.notifications),
      ),
      NavigationDestination(
        label: l.mainPageNavigationBarLabelAbout,
        icon: const Icon(Icons.info_outlined),
        selectedIcon: const Icon(Icons.info),
      ),
    ];

    return Scaffold(
      body: Row(
        children: [
          if (!isMobile) ...[
            NavigationRail(
              destinations: destinations
                  .map(
                    (e) => NavigationRailDestination(
                      label: Text(e.label),
                      icon: e.icon,
                      selectedIcon: e.selectedIcon,
                    ),
                  )
                  .toList(),
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: _onDestinationSelected,
              labelType: NavigationRailLabelType.all,
            ),
            const VerticalDivider(thickness: 1, width: 1),
          ],
          Expanded(
            child: navigationShell,
          ),
        ],
      ),
      bottomNavigationBar: isMobile
          ? NavigationBar(
              destinations: destinations,
              selectedIndex: navigationShell.currentIndex,
              onDestinationSelected: _onDestinationSelected,
            )
          : null,
    );
  }

  void _onDestinationSelected(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
