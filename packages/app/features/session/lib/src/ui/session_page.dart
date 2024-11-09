import 'dart:async';

import 'package:app_cores_core/util.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:app_features_session/src/data/providers/bookmarked_sessions.dart';
import 'package:app_features_session/src/data/providers/session_timeline.dart';
import 'package:app_features_session/src/ui/session_room_chip.dart';
import 'package:app_features_session/src/ui/session_speaker_icon.dart';
import 'package:app_features_session/src/ui/session_type_chip.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as intl;

final _dateFormatter = intl.DateFormat.Md();
final _timeFormatter = intl.DateFormat.Hm();

class SessionPage extends ConsumerWidget with SessionPageMixin {
  SessionPage({
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
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(session.title),
              expandedHeight: getExpandedHeight(
                title: session.title,
                context: context,
              ),
              actions: [
                IconButton(
                  tooltip: l.shareOnX,
                  padding: const EdgeInsets.all(12),
                  onPressed: () {
                    final uri = Uri.https(
                      'twitter.com',
                      'intent/tweet',
                      {
                        'text': session.title,
                        'url':
                            'https://2024.flutterkaigi.jp/session/$sessionId',
                        'hashtags': 'FlutterKaigi2024',
                        'via': 'FlutterKaigi',
                      },
                    );
                    unawaited(launchInExternalApp(uri));
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
                      leading: SessionSpeakerIcon(
                        profile: speaker,
                        size: 56,
                      ),
                      title: Text(speaker.name),
                      onTap: () {
                        final xUri = speaker.xUri;
                        if (xUri != null) {
                          unawaited(launchInExternalApp(xUri));
                        }
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
                Tooltip(
                  message: l.registerToCalendar,
                  child: ListTile(
                    title: Text(
                      _buildSchedule(session.startsAt, session.endsAt),
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

  String _buildSchedule(DateTime startsAt, DateTime endsAt) {
    final startDate = _dateFormatter.format(startsAt);
    final startTime = _timeFormatter.format(startsAt);
    final endTime = _timeFormatter.format(endsAt);
    return '$startDate $startTime~$endTime';
  }
}

// MEMO(@chippy-ao): Widget に書くと邪魔なので、mixin に出しました
mixin SessionPageMixin {
  final appBarSize = kToolbarHeight;
  final padding = 16;

  /// title の長さに応じて、SliverAppBar の expandedHeight を計算します
  double getExpandedHeight({
    required String title,
    required BuildContext context,
    bool forLarge = true,
  }) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: title,
        style: forLarge
            ? Theme.of(context).textTheme.headlineMedium
            : Theme.of(context).textTheme.headlineSmall,
      ),
      textDirection: TextDirection.ltr,
    )..layout(
        maxWidth: MediaQuery.sizeOf(context).width - padding,
      );
    return appBarSize + padding + textPainter.height;
  }
}
