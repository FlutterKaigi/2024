import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/pages/debug/components/navigation_debug_page.dart';

class DebugRoute extends GoRouteData {
  const DebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DebugPage();
  }
}

class DebugPage extends StatelessWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorSchema = Theme.of(context).colorScheme;
    final children = [
      ListTile(
        title: const Text('Navigation Debug'),
        onTap: () async => const NavigationDebugRoute().push<void>(context),
      ),
      Card(
        elevation: 0,
        color: colorSchema.primaryContainer,
        margin: const EdgeInsets.all(8),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const Text(
                'Providers',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Consumer(
                builder: (context, ref, child) => ListTile(
                  title: const Text('authNotifierProvider State'),
                  subtitle: Text(
                    const JsonEncoder.withIndent(' ').convert(
                      ref.watch(authNotifierProvider)?.toJson(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('DebugPage'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => children[index],
        separatorBuilder: (context, index) => const Divider(),
        itemCount: children.length,
      ),
    );
  }
}
