import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/data/providers/session_timeline.dart';
import 'package:app_features_session/src/routing/router.dart';
import 'package:app_features_session/src/ui/timeline_item_view.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionsPage extends ConsumerWidget {
  const SessionsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSession.of(context);
    final sessions = ref.watch(sessionTimelineProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: const Center(
              child: MainLogo(),
            ),
            title: Text(l.sessionPageTitle),
            actions: [
              IconButton(
                tooltip: l.bookmarked,
                onPressed: () async =>
                    const BookmarkedSessionsPageRoute().push(context),
                icon: const Icon(Icons.bookmarks_outlined),
              ),
              const SettingsButton(),
            ],
          ),
          sessions.when(
            data: (data) => SliverList.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final item = data[index];
                final isDateVisible =
                    index == 0 || item.startsAt != data[index - 1].startsAt;
                return TimelineItemView(
                  item: item,
                  isDateVisible: isDateVisible,
                  onTap: item.map(
                    event: (_) => null,
                    session: (session) => () async =>
                        SessionPageRoute(sessionId: session.id).push(context),
                  ),
                );
              },
            ),
            loading: () => const SliverFillRemaining(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
            error: (error, _) => SliverFillRemaining(
              child: Center(
                child: Text(error.toString()),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
