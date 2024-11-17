import 'package:common_data/src/model/entry_log.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'entry_log_repository.g.dart';

@Riverpod(keepAlive: true)
EntryLogRepository entryLogRepository(Ref ref) {
  return EntryLogRepository(
    client: ref.watch(supabaseClientProvider),
  );
}

class EntryLogRepository {
  EntryLogRepository({
    required SupabaseClient client,
  }) : _client = client;

  final SupabaseClient _client;

  Future<EntryLog> createEntryLog({
    required String userId,
  }) async =>
      _client
          .from('entry_log')
          .insert({
            'id': userId,
          })
          .select()
          .single()
          .withConverter(EntryLog.fromJson);

  Future<void> deleteEntryLog({
    required String userId,
  }) async =>
      _client.from('entry_log').delete().eq('id', userId);

  Future<EntryLog?> getEntryLog({
    required String userId,
  }) async =>
      _client
          .from('entry_log')
          .select()
          .eq('id', userId)
          .maybeSingle()
          .withConverter(
            (r) => r != null ? EntryLog.fromJson(r) : null,
          );
}
