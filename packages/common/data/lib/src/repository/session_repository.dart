import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'session_repository.g.dart';

@Riverpod(keepAlive: true)
SessionRepository sessionRepository(SessionRepositoryRef ref)
=> SessionRepository(client: ref.watch(supabaseClientProvider));

class SessionRepository {
  SessionRepository({required SupabaseClient client,}) : _client = client;

  final SupabaseClient _client;
}
