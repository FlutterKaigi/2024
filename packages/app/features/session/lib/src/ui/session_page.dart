import 'dart:async';

import 'package:app_cores_core/util.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/providers/bookmarked_sessions.dart';
import 'package:app_features_session/src/providers/session_timeline.dart';
import 'package:app_features_session/src/ui/bordered_icon_image.dart';
import 'package:app_features_session/src/ui/session_room_chip.dart';
import 'package:app_features_session/src/ui/session_type_chip.dart';
import 'package:collection/collection.dart';
import 'package:common_data/profile.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionPage extends ConsumerWidget {
  const SessionPage({
    required this.sessionId,
    super.key,
  });

  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSession.of(context);
    final isBookmarked = ref.watch(isBookmarkedProvider(sessionId: sessionId));
    final item = ref.watch(
      sessionTimelineProvider.select(
        (value) => value.valueOrNull?.firstWhereOrNull(
          (e) => e is TimelineItemSession && e.id == sessionId,
        ),
      ),
    );
    final session = item as TimelineItemSession?;

    if (session == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(session.title),
            actions: [
              IconButton(
                tooltip: l.shareOnX,
                padding: const EdgeInsets.all(12),
                onPressed: () {
                  // TODO: データをつなぎこんだら共有機能を実装する
                },
                icon: const Icon(Icons.share),
              ),
            ],
          ),
          SliverList.list(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: [
                    IntrinsicWidth(
                      child: SessionRoomChip(
                        venue: session.venue,
                      ),
                    ),
                    IntrinsicWidth(
                      child: SessionTypeChip(
                        session: session,
                      ),
                    ),
                  ],
                ),
              ),
              const Gap(8),
              for (final speaker in session.speakers) ...[
                Tooltip(
                  message: l.openSpeakersLink,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    leading: const BorderedIconImage(
                      size: 56,
                    ),
                    title: Text(speaker.name),
                    onTap: () {
                      unawaited(
                        launchInExternalApp(speaker.snsAccounts.first.uri),
                      );
                    },
                  ),
                ),
              ],
              const Gap(16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: MarkdownBody(
                  data: session.description,
                ),
              ),
              const Gap(8),
              // TODO: データをつなぎこんだら日時を下記の形式にフォーマットする (#231)
              Tooltip(
                message: l.registerToCalendar,
                child: ListTile(
                  title: Text(
                    'Day1 14:00~15:00',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  leading: const Icon(Icons.event_outlined),
                  onTap: () {
                    // TODO: 該当の日時でカレンダーを開く (#24)
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBookmarked) {
            ref.read(bookmarkedSessionsProvider.notifier).remove(
                  sessionId: sessionId,
                );
          } else {
            ref.read(bookmarkedSessionsProvider.notifier).save(
                  sessionId: sessionId,
                );
          }
        },
        child: isBookmarked
            ? const Icon(Icons.bookmark)
            : const Icon(Icons.bookmark_outline),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('sessionId', sessionId));
  }
}
