import 'package:common_data/profile.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/auth/data/auth_notifier.dart';

part 'profile_notifier.g.dart';

@Riverpod(keepAlive: true)
class ProfileNotifier extends _$ProfileNotifier {
  @override
  Future<ProfileWithSns?> build() async {
    ref.listen(
      authNotifierProvider,
      (_, next) {
        if (next == null) {
          // ログアウトしたので、プロフィールをnullにする
          state = const AsyncData(null);
        } else {
          // ログインしたので、プロフィールを取得する
          ref.invalidateSelf();
        }
      },
    );

    final profileRepository = ref.watch(profileRepositoryProvider);
    return profileRepository.fetchMyProfileWithSns();
  }
}
