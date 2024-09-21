import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/pages/home/components/ticket_cards.dart';
import 'package:ticket_web/pages/home/components/title_and_logo.dart';

part 'home_page.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SiteScaffold.widget(
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16),
            child: TitleAndLogo(),
          ),
          SizedBox(height: 48),
          TicketCards(),
        ],
      ),
    );
  }
}
