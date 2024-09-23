import 'dart:developer';

import 'package:common_data/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
Stream<User?> currentUser(CurrentUserRef ref) async* {
  final authRepository = ref.watch(authRepositoryProvider);

  authRepository.onAuthStateChange.listen(
    (authChangeEvent) {
      if (authChangeEvent != AuthChangeEvent.initialSession) {
        ref.invalidateSelf();
      }
    },
  );

  final currentUser = authRepository.currentUser;
  log('currentUser: $currentUser');
  yield currentUser;
}
