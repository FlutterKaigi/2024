import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';
import 'package:ticket_web/pages/home/components/login_before_purchase.dart';
import 'package:ticket_web/pages/home/components/ticket_cards.dart';
import 'package:ticket_web/pages/home/components/title_and_logo.dart';
import 'package:ticket_web/pages/home/components/transit_to_home_page.dart';

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
    final authState = ref.watch(authNotifierProvider);

    return SiteScaffold.widget(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: TitleAndLogo(),
          ),
          const TransitToHomePage(),
          const SizedBox(height: 48),
          if (authState == null)
            LoginBeforePurchase(
              onSignInPressed:
                  ref.read(authNotifierProvider.notifier).signInWithGoogle,
            ),
          const TicketCards(),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}
