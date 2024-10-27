import 'package:common_data/session.dart';
import 'package:common_data/sponsor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_timeline.freezed.dart';
part 'session_timeline.g.dart';

@riverpod
Future<List<TimelineItem>> sessionTimeline(Ref ref) async {
  final repository = ref.watch(sessionRepositoryProvider);
  final sessionVenuesWithSessions =
      await repository.fetchSessionVenuesWithSessions();

  final timelineItems = <TimelineItem>[];
  for (final venueWithSessions in sessionVenuesWithSessions) {
    final venue = SessionVenue(
      id: venueWithSessions.id,
      name: venueWithSessions.name,
    );

    final sessions = venueWithSessions.sessions
      ..sort((a, b) => a.startsAt.compareTo(b.startsAt));
    for (final session in sessions) {
      timelineItems.add(
        TimelineItem.session(
          id: session.id,
          title: session.title,
          description: session.description,
          startsAt: session.startsAt,
          endsAt: session.endsAt,
          isLightningTalk: session.isLightningTalk,
          venue: venue,
          speakers: session.speakers,
          sponsors: session.sponsors,
        ),
      );
    }
  }

  return timelineItems;
}

@freezed
class TimelineItem with _$TimelineItem {
  const factory TimelineItem.event({
    required String title,
    required DateTime startsAt,
    required DateTime endsAt,
  }) = TimelineItemEvent;

  const factory TimelineItem.session({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required SessionVenue venue,
    required List<ProfileWithSns> speakers,
    required List<Sponsor> sponsors,
  }) = TimelineItemSession;
}
