import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sponsors_provider.g.dart';

@riverpod
Future<List<Sponsor>> sponsors(SponsorsRef ref) async {
  final repository = ref.watch(sponsorRepositoryProvider);
  return repository.fetchSponsors();
}
