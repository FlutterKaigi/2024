import 'package:app_features_session/src/data/model/timeline_item.dart';
import 'package:collection/collection.dart';
import 'package:common_data/session.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_timeline.g.dart';

@riverpod
Future<List<TimelineItem>> sessionTimeline(Ref ref) async {
  final repository = ref.watch(sessionRepositoryProvider);
  final sessionVenuesWithSessions =
      await repository.fetchSessionVenuesWithSessionsV4();
  final events = ref.watch(timelineEventsProvider);

  final timelineItems = <TimelineItem>[];
  final eventsWithoutVenue = events.where((e) => e.venueId == null);
  for (final venueWithSessions in sessionVenuesWithSessions) {
    final venue = SessionVenue(
      id: venueWithSessions.id,
      name: venueWithSessions.name,
    );
    final eventsAtVenue = events.where(
      (e) => e.venueId == venue.id,
    );

    final sessions = venueWithSessions.sessions;
    for (final session in sessions) {
      timelineItems.add(
        TimelineItem.session(
          id: session.id,
          title: session.title,
          description: session.description,
          startsAt: session.startsAt.toLocal(),
          endsAt: session.endsAt.toLocal(),
          isLightningTalk: session.isLightningTalk,
          venue: venue,
          speakers: session.speakers,
          sponsors: session.sponsors,
        ),
      );
    }
    for (final event in eventsAtVenue) {
      timelineItems.add(
        TimelineItem.event(
          title: event.title,
          startsAt: event.startsAt.toLocal(),
          endsAt: event.endsAt.toLocal(),
          venue: venue,
        ),
      );
    }
  }
  for (final event in eventsWithoutVenue) {
    timelineItems.add(
      TimelineItem.event(
        title: event.title,
        startsAt: event.startsAt.toLocal(),
        endsAt: event.endsAt.toLocal(),
      ),
    );
  }

  return timelineItems.sorted((a, b) => a.startsAt.compareTo(b.startsAt));
}

typedef TimelineEvent = ({
  String title,
  DateTime startsAt,
  DateTime endsAt,
  String? venueId,
});

@riverpod
List<TimelineEvent> timelineEvents(Ref ref) {
  return [
    // 1日目
    (
      title: '開場',
      startsAt: DateTime.utc(2024, 11, 21, 0, 30),
      endsAt: DateTime.utc(2024, 11, 21, 0, 30),
      venueId: null,
    ),
    (
      title: '基調講演',
      startsAt: DateTime.utc(2024, 11, 21, 1, 10),
      endsAt: DateTime.utc(2024, 11, 21, 1, 50),
      venueId: null,
    ),
    (
      title: 'ランチ',
      startsAt: DateTime.utc(2024, 11, 21, 2, 40),
      endsAt: DateTime.utc(2024, 11, 21, 4),
      venueId: null,
    ),
    (
      title: '懇親会準備',
      startsAt: DateTime.utc(2024, 11, 21, 7, 40),
      endsAt: DateTime.utc(2024, 11, 21, 7, 40),
      venueId: 'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d', // Room Aのみ
    ),
    (
      title: '閉会',
      startsAt: DateTime.utc(2024, 11, 21, 9, 10),
      endsAt: DateTime.utc(2024, 11, 21, 9, 10),
      venueId: null,
    ),
    (
      title: '懇親会',
      startsAt: DateTime.utc(2024, 11, 21, 9, 30),
      endsAt: DateTime.utc(2024, 11, 21, 11),
      venueId: 'd6432c3c-3ef9-44ef-aa69-78f5e4dd867d', // Room Aのみ
    ),
    // 2日目
    (
      title: '開場',
      startsAt: DateTime.utc(2024, 11, 22, 0, 30),
      endsAt: DateTime.utc(2024, 11, 22, 0, 30),
      venueId: null,
    ),
    (
      title: 'ランチ',
      startsAt: DateTime.utc(2024, 11, 22, 2, 40),
      endsAt: DateTime.utc(2024, 11, 22, 4, 30),
      venueId: null,
    ),
    (
      title: '閉会',
      startsAt: DateTime.utc(2024, 11, 22, 9, 10),
      endsAt: DateTime.utc(2024, 11, 22, 9, 10),
      venueId: null,
    ),
  ];
}
