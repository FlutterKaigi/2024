import 'package:common_data/src/model/contributor.dart';
import 'package:common_data/src/repository/contributor_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'contributors_provider.g.dart';

@riverpod
Future<List<Contributor>> contributors(ContributorsRef ref) async {
  final repository = ref.watch(contributorRepositoryProvider);
  return repository.fetchContributors();
}
