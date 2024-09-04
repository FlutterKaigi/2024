import 'package:common_data/sponsor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsor_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<Sponsor>> sponsor(SponsorRef ref) async =>
    ref.watch(sponsorRepositoryProvider).fetchSponsors();
