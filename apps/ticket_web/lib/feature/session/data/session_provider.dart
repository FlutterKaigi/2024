import 'package:common_data/session.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'session_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Session>> session(SessionRef ref) async =>
    ref.watch(sessionRepositoryProvider).fetchSessions();
