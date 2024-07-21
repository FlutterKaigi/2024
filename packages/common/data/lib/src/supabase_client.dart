import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'supabase_client.g.dart';

@Riverpod(keepAlive: true)
Supabase _supabase(_SupabaseRef ref) {
  final supabase = Supabase.instance;
  ref.onDispose(() async => supabase.dispose());
  return supabase;
}

@Riverpod(keepAlive: true)
SupabaseClient supabaseClient(SupabaseClientRef ref) {
  final supabase = ref.watch(_supabaseProvider);
  final supabaseClient = supabase.client;
  ref.onDispose(() async => supabaseClient.dispose());
  return supabaseClient;
}

@Riverpod(keepAlive: true)
StorageFileApi staffsStorageFileApi(StaffsStorageFileApiRef ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return supabaseClient.storage.from('staffs');
}
