import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:common_data/session.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

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
