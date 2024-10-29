import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/feature/session/data/special_sessions_notifier.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/model/time_slot.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/time_slot_row.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionGrid extends ConsumerWidget {
  const SessionGrid({
    required this.sessionVenues,
    required this.selectedDate,
    super.key,
  });

  final List<SessionVenuesWithSessions> sessionVenues;
  final EventDate selectedDate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final specialSessions =
        ref.watch(specialSessionsByDateProvider(selectedDate));
    final sessionsByStartTime = _groupSessionsByStartTime();
    final selectedSessions = sessionsByStartTime.entries
        .where((entry) => selectedDate.isSameDate(entry.key))
        .toList();

    // すべての開始時刻を取得（通常セッションと特別セッション）
    final allStartTimes = {
      ...selectedSessions.map((e) => e.key),
      ...specialSessions.map((s) => s.startsAt),
    }.toList()
      ..sort();

    // 各開始時刻に対応するTimeSlotを作成
    final allTimeSlots = allStartTimes.map((time) {
      final normalSessions =
          selectedSessions.firstWhereOrNull((e) => e.key == time)?.value ??
              const [];

      // LTセッションをグループ化
      final groupedSessions = _groupLightningTalks(normalSessions);

      final specialSession =
          specialSessions.firstWhereOrNull((s) => s.startsAt == time);

      return TimeSlot(
        time: time,
        sessions: groupedSessions,
        specialSession: specialSession,
      );
    }).toList();

    print(const JsonEncoder.withIndent('  ').convert(allTimeSlots));

    return Column(
      children: [
        for (final slot in allTimeSlots)
          TimeSlotRow(
            startTime: slot.time,
            sessions: slot.sessions,
            sessionVenues: sessionVenues,
            specialSession: slot.specialSession,
          ),
      ],
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

  List<SessionAndSessionVenue> _groupLightningTalks(
    List<SessionAndSessionVenue> sessions,
  ) {
    final result = <SessionAndSessionVenue>[];
    final groupedByVenue = sessions.groupListsBy((s) => s.sessionVenue.id);

    for (final venueGroup in groupedByVenue.values) {
      if (venueGroup.every((s) => s.session.isLightningTalk)) {
        // すべてがLTの場合はグループ化
        final firstSession = venueGroup.first;
        final lastSession = venueGroup.last;

        // LTセッションをまとめた新しいセッションを作成
        final groupedSession = SessionWithSpeakerAndSponsor(
          id: 'lt_group_${firstSession.session.id}',
          title: 'Lightning Talks',
          description: venueGroup.map((s) => s.session.description).join('\n'),
          startsAt: firstSession.session.startsAt,
          endsAt: lastSession.session.endsAt,
          isLightningTalk: true,
          speakers: venueGroup.expand((s) => s.session.speakers).toList(),
          sponsors: venueGroup.expand((s) => s.session.sponsors).toList(),
        );

        result.add(
          (
            session: groupedSession,
            sessionVenue: firstSession.sessionVenue,
          ),
        );
      } else {
        // LT以外のセッションは個別に追加
        result.addAll(venueGroup);
      }
    }

    return result;
  }
}

typedef SessionAndSessionVenue = ({
  SessionWithSpeakerAndSponsor session,
  SessionVenuesWithSessions sessionVenue
});
