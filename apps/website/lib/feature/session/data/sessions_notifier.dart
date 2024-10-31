import 'package:collection/collection.dart';
import 'package:common_data/session.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sessions_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<SessionVenuesWithSessionsV2>> sessions(Ref ref) async {
  final repository = ref.watch(sessionRepositoryProvider);
  return repository.fetchSessionVenuesWithSessionsV2();
}

typedef SessionsWithSessionVenue = ({
  SessionVenuesWithSessionsV2 sessionVenue,
  SessionsWithSpeakerSponsorV2 session,
});

enum EventDate {
  day1(2024, 11, 21),
  day2(2024, 11, 22),
  ;

  const EventDate(this.year, this.month, this.day);

  final int year;
  final int month;
  final int day;

  bool isSameDate(DateTime date) {
    final localDate = date.toLocal();
    return localDate.year == year &&
        localDate.month == month &&
        localDate.day == day;
  }
}

@riverpod
Future<List<SessionVenuesWithSessionsV2>> sessionsByDate(
  Ref ref,
  EventDate date,
) async {
  final sessions = await ref.watch(sessionsProvider.future);
  return sessions.where((venue) {
    return venue.sessions.any((session) {
      final sessionDate = session.startsAt.toLocal();
      return sessionDate.year == date.year &&
          sessionDate.month == date.month &&
          sessionDate.day == date.day;
    });
  }).toList();
}

typedef SessionDetails = ({
  SessionVenuesWithSessions sessionVenue,
  SessionWithSpeakerAndSponsor session,
});

@Riverpod(keepAlive: true)
Future<SessionDetails> sessionDetails(
  Ref ref,
  String sessionId,
) async {
  final sessions = await ref.watch(sessionsProvider.future);
  final result = sessions.firstWhereOrNull(
    (venue) => venue.sessions.any((session) => session.id == sessionId),
  );
  if (result == null) {
    throw Exception('Session not found: $sessionId');
  }
  return (
    sessionVenue: result,
    session: result.sessions.firstWhere((session) => session.id == sessionId),
  );
}
