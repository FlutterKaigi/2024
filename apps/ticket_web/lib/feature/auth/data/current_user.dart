import 'package:common_data/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'current_user.g.dart';

@Riverpod(keepAlive: true)
Stream<User?> currentUser(CurrentUserRef ref) async* {
  final authRepository = ref.watch(authRepositoryProvider);

  authRepository.onAuthStateChange.listen(
    (_) => ref.invalidateSelf(),
  );

  yield authRepository.currentUser;
}
