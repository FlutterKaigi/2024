import 'package:common_data/src/model/contributor.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'contributor_repository.g.dart';

@Riverpod(keepAlive: true)
ContributorRepository contributorRepository(Ref ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return ContributorRepository(
    supabaseClient: supabaseClient,
  );
}

final class ContributorRepository {
  ContributorRepository({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  Future<List<Contributor>> fetchContributors() async {
    final contributors = await _supabaseClient
        .from('contributors')
        .select('name, avatar_url, contribution_count')
        .order('contribution_count', ascending: false)
        .withConverter(
          (json) => json.map(Contributor.fromJson).toList(),
        );

    return contributors;
  }
}
