import 'package:collection/collection.dart';
import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/feature/session/data/special_sessions_notifier.dart';
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

      final specialSession =
          specialSessions.firstWhereOrNull((s) => s.startsAt == time);

      return TimeSlot(
        time: time,
        sessions: normalSessions,
        specialSession: specialSession,
      );
    }).toList();

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
}

class TimeSlot {
  const TimeSlot({
    required this.time,
    required this.sessions,
    this.specialSession,
  });

  final DateTime time;
  final List<SessionAndSessionVenue> sessions;
  final SpecialSession? specialSession;
}

typedef SessionAndSessionVenue = ({
  SessionWithSpeakerAndSponsor session,
  SessionVenuesWithSessions sessionVenue
});
