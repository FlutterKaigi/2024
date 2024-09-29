import 'package:common_data/sponsor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<SponsorWithSession>> sponsorWithSessions(
  SponsorWithSessionsRef ref,
) async =>
    ref.watch(sponsorRepositoryProvider).fetchSponsorWithSessions();
