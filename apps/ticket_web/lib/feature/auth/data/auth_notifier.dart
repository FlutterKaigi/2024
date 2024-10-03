import 'package:common_data/auth.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:ticket_web/feature/auth/data/on_auth_state_change_provider.dart';

part 'auth_notifier.g.dart';

@Riverpod(keepAlive: true)
class AuthNotifier extends _$AuthNotifier {
  @override
  User? build() {
    final authRepository = ref.watch(authRepositoryProvider);
    ref.listen(
      onAuthStateChangeProvider,
      (_, __) => ref.invalidateSelf(),
    );
    final currentUser = authRepository.currentUser;
    return currentUser;
  }

  Future<bool> signInWithGoogle() async =>
      ref.read(authRepositoryProvider).signInWithGoogle(
            redirectTo:
                kIsWeb ? null : 'jp.flutterkaigi.ticket://login-callback',
          );

  Future<void> signOut() async => ref.read(authRepositoryProvider).signOut();

  String? accessToken() => ref.read(authRepositoryProvider).accessToken;
}
