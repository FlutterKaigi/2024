import 'package:common_data/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_web/core/components/site_scaffold.dart';
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
      body: Column(
        children: [
          const TitleAndLogo(),
          TextButton.icon(
            label: const Text('Sign in with Google'),
            icon: const Icon(Icons.login),
            onPressed: () async =>
                ref.read(authRepositoryProvider).signInWithGoogle(
                      redirectTo: kIsWeb
                          ? null
                          : 'jp.flutterkaigi.ticket://login-callback',
                    ),
          ),
        ],
      ),
    );
  }
}
