import 'package:collection/collection.dart';
import 'package:common_data/sponsor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<SponsorWithSession>> sponsorWithSessions(
  SponsorWithSessionsRef ref,
) async =>
    ref.watch(sponsorRepositoryProvider).fetchSponsorWithSessions();

@Riverpod(keepAlive: true)
Future<List<SponsorAndSession>> sponsorAndSessionList(
  SponsorAndSessionListRef ref,
) async {
  final sponsorWithSessions =
      await ref.watch(sponsorWithSessionsProvider.future);
  return sponsorWithSessions
      .map(
        (sponsor) => sponsor.sessions.map(
          (session) => (
            sponsor: sponsor,
            session: session,
          ),
        ),
      )
      .flattened
      .toList();
}

typedef SponsorAndSession = ({
  SessionWithSpeakerAndVenue session,
  SponsorWithSession sponsor
});
