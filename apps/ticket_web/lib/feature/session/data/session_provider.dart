import 'package:common_data/session.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Session>> session(Ref ref) async =>
    ref.watch(sessionRepositoryProvider).fetchSessions();
