import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/router/router.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/feature/sponsor/data/sponsor_provider.dart';
import 'package:ticket_web/pages/debug/components/navigation_debug_page.dart';
import 'package:ticket_web/pages/debug/components/ticket_debug_list_tile.dart';

class DebugRoute extends GoRouteData {
  const DebugRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const DebugPage();
  }
}

class DebugPage extends HookConsumerWidget {
  const DebugPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              ListTile(
                title: const Text(
                  'authNotifierProvider State '
                  '(Tap to Sign In, Long Press to Sign Out)',
                ),
                subtitle: Text(
                  const JsonEncoder.withIndent(' ').convert(
                    ref.watch(authNotifierProvider)?.toJson(),
                  ),
                ),
                onTap: () async =>
                    ref.read(authNotifierProvider.notifier).signInWithGoogle(),
                onLongPress: () async =>
                    ref.read(authNotifierProvider.notifier).signOut(),
              ),
              ListTile(
                title: const Text(
                  'sponsorAndSessionListProvider State '
                  '(Long Press to Invalidate)',
                ),
                subtitle: Text(
                  ref.watch(sponsorAndSessionListProvider).toString(),
                ),
                onLongPress: () async =>
                    ref.invalidate(sponsorAndSessionListProvider),
              ),
              const TicketDebugListTile(),
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
