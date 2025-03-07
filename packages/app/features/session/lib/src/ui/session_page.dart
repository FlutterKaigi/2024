import 'dart:async';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:app_cores_core/util.dart';
import 'package:app_features_session/l10n.dart';
import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:app_features_session/src/data/providers/bookmarked_sessions.dart';
import 'package:app_features_session/src/data/providers/session_timeline.dart';
import 'package:app_features_session/src/ui/session_room_chip.dart';
import 'package:app_features_session/src/ui/session_speaker_icon.dart';
import 'package:app_features_session/src/ui/session_type_chip.dart';
import 'package:app_features_session/src/utils/youtube_player_controller_hook.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart' as intl;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

final _dateFormatter = intl.DateFormat.Md();
final _timeFormatter = intl.DateFormat.Hm();
final _googleCalendarDateFormatter = intl.DateFormat("yyyyMMdd'T'HHmmss'Z'");

class SessionPage extends HookConsumerWidget {
  const SessionPage({
    required this.sessionId,
    super.key,
  });

  final String sessionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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

    final videoUrl = session.videoUrl;
    if (videoUrl == null) {
      return _SessionLayout(
        session: session,
        player: null,
      );
    }

    final videoId = videoUrl.queryParameters['v'];
    if (videoId == null) {
      return _SessionLayout(
        session: session,
        player: null,
      );
    }

    final controller = useYoutubePlayerController(
      initialVideoId: videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
      ),
    );

    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: controller,
        showVideoProgressIndicator: true,
        topActions: [
          const Spacer(),
          IconButton(
            icon: const Icon(
              Icons.open_in_new,
              color: Colors.white,
            ),
            onPressed: () {
              unawaited(launchInExternalApp(videoUrl));
            },
          ),
        ],
      ),
      builder: (context, player) {
        return _SessionLayout(
          session: session,
          player: player,
        );
      },
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('sessionId', sessionId));
  }
}

class _SessionLayout extends ConsumerWidget with SessionPageMixin {
  _SessionLayout({
    required TimelineItemSession session,
    required Widget? player,
  })  : _session = session,
        _player = player;

  final TimelineItemSession _session;

  final Widget? _player;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nSession.of(context);
    final isBookmarked =
        ref.watch(isBookmarkedProvider(sessionId: _session.id));

    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: Text(_session.title),
              expandedHeight: getExpandedHeight(
                title: _session.title,
                context: context,
              ),
              actions: [
                IconButton(
                  tooltip: l.shareOnX,
                  padding: const EdgeInsets.all(12),
                  onPressed: () {
                    final uri = Uri.https(
                      'x.com',
                      'intent/tweet',
                      {
                        'text': _session.title,
                        'url':
                            'https://2024.flutterkaigi.jp/session/${_session.id}',
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
                if (_player != null) ...[
                  const Gap(16),
                  _player,
                  const Gap(16),
                ],
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Wrap(
                    runSpacing: 8,
                    spacing: 8,
                    children: [
                      IntrinsicWidth(
                        child: SessionRoomChip(
                          venue: _session.venue,
                        ),
                      ),
                      IntrinsicWidth(
                        child: SessionTypeChip(
                          session: _session,
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(8),
                for (final speaker in _session.speakers) ...[
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
                    data: _session.description,
                  ),
                ),
                const Gap(8),
                Tooltip(
                  message: l.registerToCalendar,
                  child: ListTile(
                    title: Text(
                      _buildSchedule(_session.startsAt, _session.endsAt),
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    leading: const Icon(Icons.event_outlined),
                    onTap: () async {
                      switch (defaultTargetPlatform) {
                        case TargetPlatform.iOS:
                          final event = _createIosEvent(_session);
                          await Add2Calendar.addEvent2Cal(event);
                        case TargetPlatform.macOS:
                        case TargetPlatform.android:
                        case TargetPlatform.fuchsia:
                        case TargetPlatform.linux:
                        case TargetPlatform.windows:
                          await launchInExternalApp(
                            _createGoogleCalendarUrl(_session),
                          );
                      }
                    },
                  ),
                ),
                const Gap(16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    l.feedback,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                const Gap(8),
                Tooltip(
                  message: l.sendFeedback,
                  child: ListTile(
                    title: Text(l.sendFeedback),
                    trailing: const Icon(Icons.arrow_outward),
                    onTap: () {
                      final formUrl = Uri.parse(l.feedbackFormUrl(_session.id));
                      unawaited(
                        launchInExternalApp(formUrl),
                      );
                    },
                  ),
                ),
                const Gap(64),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (isBookmarked) {
            ref.read(bookmarkedSessionsProvider.notifier).remove(
                  sessionId: _session.id,
                );
          } else {
            ref.read(bookmarkedSessionsProvider.notifier).save(
                  sessionId: _session.id,
                );
          }
        },
        child: isBookmarked
            ? const Icon(Icons.bookmark)
            : const Icon(Icons.bookmark_outline),
      ),
    );
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

Event _createIosEvent(
  TimelineItemSession session,
) =>
    Event(
      title: 'FlutterKaigi 2024: ${session.title}',
      description: session.description,
      location: session.venue.name,
      startDate: session.startsAt,
      endDate: session.endsAt,
      iosParams: const IOSParams(
        reminder: Duration(minutes: 10),
      ),
    );

Uri _createGoogleCalendarUrl(
  TimelineItemSession session,
) {
  return Uri.https(
    'www.google.com',
    'calendar/render',
    {
      'action': 'TEMPLATE',
      'text': 'FlutterKaigi 2024: ${session.title}',
      'details': session.description,
      'location': session.venue.name,
      'dates':
          '${_googleCalendarDateFormatter.format(session.startsAt.toUtc())}/${_googleCalendarDateFormatter.format(session.endsAt.toUtc())}',
    },
  );
}
