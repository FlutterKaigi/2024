import 'package:collection/collection.dart';
import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_header.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_session_card.dart';
import 'package:conference_2024_website/ui/components/error_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionTable extends ConsumerWidget {
  const SessionTable({
    required this.date,
    super.key,
  });

  final EventDate date;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final isMobile = MediaQuery.sizeOf(context).isMobile;

    final state = ref.watch(sessionsByDateProvider(date));

    return switch (state) {
      AsyncData(:final value) => _Body(sessionVenues: value),
      AsyncError(:final error) => Center(
          child: ErrorCard(
            error: error,
            onRetry: () => ref.invalidate(sessionsByDateProvider(date)),
          ),
        ),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<EventDate>('date', date));
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.sessionVenues,
  });

  final List<SessionVenuesWithSessions> sessionVenues;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // ヘッダー部分（会場名を横並びで表示）
        SessionTableHeader(sessionVenues: sessionVenues),
        const Gap(16),
        // セッション一覧
        _SessionGrid(
          sessionVenues: sessionVenues,
        ),
      ],
    );
  }
}

class _SessionGrid extends StatelessWidget {
  const _SessionGrid({
    required this.sessionVenues,
  });

  final List<SessionVenuesWithSessions> sessionVenues;

  @override
  Widget build(BuildContext context) {
    // セッションを時間でグループ化
    final sessionsByStartTime = _groupSessionsByStartTime();

    return Column(
      children: sessionsByStartTime.entries.map((entry) {
        final startTime = entry.key;
        final sessions = entry.value;

        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 時間表示
              SizedBox(
                width: 80,
                child: Text(
                  _formatTime(startTime),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              // セッションカード
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: sessionVenues.map((venue) {
                    final session = sessions.firstWhereOrNull(
                      (s) => s.sessionVenue.id == venue.id,
                    );

                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: session != null
                            ? SessionTableSessionCard(
                                sessionAndSessionVenue: session,
                              )
                            : const SizedBox(), // 空のスペース
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

  Map<DateTime, List<SessionAndSessionVenue>> _groupSessionsByStartTime() {
    final allSessions = sessionVenues
        .map(
          (e) => e.sessions.map(
            (session) => (
              session: session,
              sessionVenue: e,
            ),
          ),
        )
        .flattened
        .sorted((a, b) => a.session.startsAt.compareTo(b.session.startsAt))
        .groupListsBy((e) => e.session.startsAt);
    return allSessions;
  }

  String _formatTime(DateTime time) {
    final localTime = time.toLocal();
    return '${localTime.hour.toString().padLeft(2, '0')}'
        ':'
        '${localTime.minute.toString().padLeft(2, '0')}';
  }
}

typedef SessionAndSessionVenue = ({
  SessionWithSpeakerAndSponsor session,
  SessionVenuesWithSessions sessionVenue
});
