import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';

class TicketRoute extends GoRouteData {
  const TicketRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Consumer(
      builder: (context, ref, child) {
        final currentUser = ref.watch(authNotifierProvider);
        if (currentUser == null) {
          throw Exception('ログインしていません');
        }
        return child!;
      },
      child: const TicketPage(),
    );
  }
}

class TicketPage extends StatelessWidget {
  const TicketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteScaffold.widget(
      body: const Center(
        child: Text('TicketPage'),
      ),
    );
  }
}
