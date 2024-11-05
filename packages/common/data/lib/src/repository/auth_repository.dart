import 'package:common_data/src/model/auth/auth_change_event.dart';
import 'package:common_data/src/model/auth/user.dart';
import 'package:common_data/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' as sb;

part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
AuthRepository authRepository(Ref ref) {
  return AuthRepository(
    client: ref.watch(supabaseClientProvider),
  );
}

final class AuthRepository {
  AuthRepository({
    required sb.SupabaseClient client,
  }) : _client = client;

  final sb.SupabaseClient _client;

  /// 直近のセッションにおけるユーザの詳細情報を取得する
  User? get currentUser {
    final user = _client.auth.currentUser;
    if (user == null) {
      return null;
    }
    return User(
      id: user.id,
      email: user.email,
      createdAt: DateTime.parse(user.createdAt),
      updatedAt:
          user.updatedAt != null ? DateTime.parse(user.updatedAt!) : null,
    );
  }

  /// セッションがある場合、AccessTokenを返す
  String? get accessToken => _client.auth.currentSession?.accessToken;

  Stream<AuthChangeEvent> get onAuthStateChange async* {
    final stream = _client.auth.onAuthStateChange;
    await for (final next in stream) {
      final event = next.event;
      final value = switch (event) {
        sb.AuthChangeEvent.initialSession => AuthChangeEvent.initialSession,
        sb.AuthChangeEvent.passwordRecovery => AuthChangeEvent.passwordRecovery,
        sb.AuthChangeEvent.signedIn => AuthChangeEvent.signedIn,
        sb.AuthChangeEvent.signedOut => AuthChangeEvent.signedOut,
        sb.AuthChangeEvent.tokenRefreshed => AuthChangeEvent.tokenRefreshed,
        sb.AuthChangeEvent.userUpdated => AuthChangeEvent.userUpdated,
        // ignore: deprecated_member_use
        sb.AuthChangeEvent.userDeleted => AuthChangeEvent.userDeleted,
        sb.AuthChangeEvent.mfaChallengeVerified =>
          AuthChangeEvent.mfaChallengeVerified,
      };
      yield value;
    }
  }

  /// もしセッションがある場合は、サインアウトする
  Future<void> signOut() async => _client.auth.signOut();

  /// Google サインイン
  Future<bool> signInWithGoogle({
    String? redirectTo,
  }) async =>
      _client.auth.signInWithOAuth(
        sb.OAuthProvider.google,
        redirectTo: redirectTo,
      );
}
