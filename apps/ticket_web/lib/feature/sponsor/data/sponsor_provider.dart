import 'package:collection/collection.dart';
import 'package:common_data/sponsor.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<SponsorWithSessionV3>> sponsorWithSessions(
  Ref ref,
) async =>
    ref.watch(sponsorRepositoryProvider).fetchSponsorWithSessionsV3();

@Riverpod(keepAlive: true)
Future<List<SponsorAndSession>> sponsorAndSessionList(
  Ref ref,
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
  SponsorWithSessionV3Session session,
  SponsorWithSessionV3 sponsor
});
