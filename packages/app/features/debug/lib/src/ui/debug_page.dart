import 'package:flutter/material.dart';
import 'package:packages_app_features_debug/src/ui/components/route_dropdown_menu.dart';

class DebugPage extends StatelessWidget {
  const DebugPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
