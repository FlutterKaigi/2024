import 'package:common_data/src/model/app_minimum_version.dart';
import 'package:common_data/src/repository/app_minimum_version_repository.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_minimum_version_provider.g.dart';

@riverpod
Future<AppMinimumVersion?> getAppMinimumVersion(
  Ref ref, {
  required AppPlatform platform,
}) async {
  final repository = ref.watch(appMinimumVersionRepositoryProvider);
  return repository.getAppMinimumVersion(platform: platform);
}

@riverpod
Future<void> subscribeAppMinimumVersion(
  Ref ref, {
  required AppPlatform platform,
  required void Function(AppMinimumVersion) callback,
}) async {
  final repository = ref.watch(appMinimumVersionRepositoryProvider);
  repository.subscribeAppMinimumVersion(
    platform: platform,
    callback: callback,
  );
}

@riverpod
Future<void> unsubscribeAppMinimumVersion(Ref ref) {
  final repository = ref.watch(appMinimumVersionRepositoryProvider);
  return repository.unsubscribeAppMinimumVersion();
}
