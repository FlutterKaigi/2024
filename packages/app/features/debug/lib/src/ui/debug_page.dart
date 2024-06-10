import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
