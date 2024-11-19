import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ticket_reader/core/router/router.dart';
import 'package:ticket_reader/features/auth/data/auth_notifier.dart';
import 'package:ticket_reader/features/profile/data/profile_notifier.dart';
import 'package:ticket_reader/features/profile/ui/profile_avatar.dart';
import 'package:ticket_reader/features/profile/ui/user_card.dart';
import 'package:ticket_reader/pages/ticket_reader_page.dart';
import 'package:ticket_reader/pages/user_search_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const _Drawer(),
      body: const _Body(),
    );
  }
}

class _Drawer extends ConsumerWidget {
  const _Drawer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authNotifierProvider);
    final profile = ref.watch(profileNotifierProvider);

    final profileValue = profile.valueOrNull;

    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            if (profileValue != null)
              DrawerHeader(
                decoration: BoxDecoration(
                  color: theme.colorScheme.secondaryContainer,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(),
                    ProfileAvatar.profileWithSns(
                      profile: profile.valueOrNull!,
                      size: 64,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      profile.value?.name ?? '',
                      style: textTheme.titleMedium,
                    ),
                    Text(
                      authState?.email ?? '',
                      style: textTheme.titleSmall?.copyWith(
                        fontFamily: GoogleFonts.jetBrainsMono().fontFamily,
                      ),
                    ),
                  ],
                ),
              ),
            ListTile(
              title: const Text('QR Scanner'),
              leading: const Icon(Icons.qr_code_scanner),
              onTap: () => const ReaderRoute().go(context),
            ),
            ListTile(
              title: const Text('User Search'),
              leading: const Icon(Icons.search),
              onTap: () => const UserSearchRoute().go(context),
            ),
            const Spacer(),
            const Divider(),
            ListTile(
              title: const Text('Sign out'),
              leading: const Icon(Icons.logout),
              onTap: () async {
                await ref.read(authNotifierProvider.notifier).signOut();
                if (context.mounted) {
                  const LoginRoute().go(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userId = ref.watch(authNotifierProvider)!.id;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            UserCard.asCard(userId: userId),
          ],
        ),
      ),
    );
  }
}
