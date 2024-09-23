import 'package:common_data/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  User? build() {
    final authRepository = ref.watch(authRepositoryProvider);

    authRepository.onAuthStateChange.listen((event) {
      if (event != AuthChangeEvent.initialSession) {
        ref.invalidateSelf();
      }
    });
    final currentUser = authRepository.currentUser;
    return currentUser;
  }

  Future<bool> signInWithGoogle() async =>
      ref.read(authRepositoryProvider).signInWithGoogle(
            redirectTo: 'jp.flutterkaigi.ticket://login-callback',
          );
}
