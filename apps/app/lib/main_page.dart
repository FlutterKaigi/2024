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
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        destinations: const [
          NavigationDestination(
            label: 'Sessions',
            icon: Icon(Icons.info),
          ),
          NavigationDestination(
            label: 'Venue',
            icon: Icon(Icons.info),
          ),
          NavigationDestination(
            label: 'News',
            icon: Icon(Icons.info),
          ),
          NavigationDestination(
            label: 'About',
            icon: Icon(Icons.info),
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
