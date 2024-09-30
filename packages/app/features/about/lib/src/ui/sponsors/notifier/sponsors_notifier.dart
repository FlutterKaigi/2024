import 'package:common_data/sponsor.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final sponsorsNotifierProvider = FutureProvider<List<Sponsor>>((ref) async {
  return ref.watch(sponsorRepositoryProvider).fetchSponsors();
});
