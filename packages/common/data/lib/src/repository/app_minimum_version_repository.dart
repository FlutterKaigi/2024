import 'package:common_data/src/model/app_minimum_version.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_minimum_version_repository.g.dart';

@Riverpod(keepAlive: true)
AppMinimumVersionRepository appMinimumVersionRepository(Ref ref) {
  return AppMinimumVersionRepository();
}

final class AppMinimumVersionRepository {
  AppMinimumVersionRepository();

  Future<AppMinimumVersion?> getAppMinimumVersion({
    required AppPlatform platform,
  }) async {
    return null;
  }

  void subscribeAppMinimumVersion({
    required AppPlatform platform,
    required void Function(AppMinimumVersion) callback,
  }) {}

  Future<void> unsubscribeAppMinimumVersion() async {}
}
