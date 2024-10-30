import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:app_features_session/src/data/providers/bookmarked_sessions.dart';
import 'package:app_features_session/src/data/providers/session_timeline.dart';
import 'package:app_features_session/src/routing/router.dart';
import 'package:app_features_session/src/ui/session_card.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookmarkedSessionsPage extends ConsumerWidget {
  const BookmarkedSessionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSession.of(context);
    final bookmarkedSessions = ref.watch(bookmarkedSessionsProvider);
    final sessions = ref.watch(sessionTimelineProvider).valueOrNull?.where(
              (e) =>
                  e is TimelineItemSession &&
                  bookmarkedSessions.sessions.contains(e.id),
            ) ??
        [];

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
                for (final session in sessions)
                  SessionCard(
                    item: session as TimelineItemSession,
                    onTap: () async =>
                        SessionPageRoute(sessionId: session.id).push(context),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
