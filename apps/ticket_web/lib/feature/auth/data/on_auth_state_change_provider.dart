import 'package:common_data/auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_auth_state_change_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AuthChangeEvent> onAuthStateChange(OnAuthStateChangeRef ref) =>
    ref.watch(authRepositoryProvider).onAuthStateChange;
