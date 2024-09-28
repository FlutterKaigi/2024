import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:packages_app_features_session/l10n.dart';
import 'package:packages_app_features_session/src/providers/bookmarked_sessions.dart';
import 'package:packages_app_features_session/src/routing/router.dart';
import 'package:packages_app_features_session/src/ui/session_item.dart';

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
          SliverList.list(
            children: [
              for (final id in sessions.sessions)
                SessionItem(
                  title: 'Example Super Session Title ~ Why we using Flutter?',
                  name: 'Name',
                  isDateVisible: true,
                  onTap: () async =>
                      SessionPageRoute(sessionId: id).push(context),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
