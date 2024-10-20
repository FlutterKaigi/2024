import 'package:common_data/contributor.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contributors_provider.g.dart';

@riverpod
Future<List<Contributor>> contributors(ContributorsRef ref) async {
  final repository = ref.watch(contributorRepositoryProvider);
  return repository.fetchContributors();
}
