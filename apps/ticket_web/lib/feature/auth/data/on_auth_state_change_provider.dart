import 'package:common_data/auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'on_auth_state_change_provider.g.dart';

@Riverpod(keepAlive: true)
Stream<AuthChangeEvent> onAuthStateChange(Ref ref) =>
    ref.watch(authRepositoryProvider).onAuthStateChange;
