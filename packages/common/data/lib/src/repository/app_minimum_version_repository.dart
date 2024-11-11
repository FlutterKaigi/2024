import 'package:common_data/src/model/app_minimum_version.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'app_minimum_version_repository.g.dart';

@Riverpod(keepAlive: true)
AppMinimumVersionRepository appMinimumVersionRepository(Ref ref) {
  final supabaseClient = ref.watch(supabaseClientProvider);
  return AppMinimumVersionRepository(
    supabaseClient: supabaseClient,
  );
}

final class AppMinimumVersionRepository {
  AppMinimumVersionRepository({
    required SupabaseClient supabaseClient,
  }) : _supabaseClient = supabaseClient;

  final SupabaseClient _supabaseClient;

  Future<AppMinimumVersion?> getAppMinimumVersion({
    required AppPlatform platform,
  }) async {
    final result = await _supabaseClient
        .from('app_minimum_versions')
        .select()
        .eq('platform', platform.name)
        .order('app_version_text', ascending: false)
        .limit(1)
        .maybeSingle();
    if (result == null) {
      return null;
    }
    return AppMinimumVersion.fromJson(result);
  }

  void subscribeAppMinimumVersion({
    required AppPlatform platform,
    required void Function(AppMinimumVersion) callback,
  }) {
    _channel()
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'app_minimum_versions',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'platform',
            value: platform.name,
          ),
          callback: (payload) {
            final appMinimumVersion = AppMinimumVersion.fromJson(
              payload.newRecord,
            );
            callback(appMinimumVersion);
          },
        )
        .subscribe();
  }

  Future<void> unsubscribeAppMinimumVersion() =>
      _supabaseClient.removeChannel(_channel());

  RealtimeChannel _channel() =>
      _supabaseClient.channel('public:app_minimum_versions');
}
