import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/providers/bookmarked_sessions.dart';
import 'package:app_features_session/src/routing/router.dart';
import 'package:app_features_session/src/ui/session_item.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookmarkedSessionsPage extends ConsumerWidget {
  const BookmarkedSessionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSession.of(context);
    final sessions = ref.watch(bookmarkedSessionsProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l.bookmarked),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverList.list(
              children: [
                for (final id in sessions.sessions)
                  SessionCard(
                    title:
                        'Example Super Session Title ~ Why we using Flutter?',
                    name: 'Name',
                    onTap: () async =>
                        SessionPageRoute(sessionId: id).push(context),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
