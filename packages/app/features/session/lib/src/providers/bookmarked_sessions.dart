import 'dart:async';

import 'package:app_cores_core/providers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bookmarked_sessions.freezed.dart';
part 'bookmarked_sessions.g.dart';

const _persistKey = 'bookmarked_sessions';

@freezed
class BookmarkedSessionList with _$BookmarkedSessionList {
  const factory BookmarkedSessionList({
    @Default({}) Set<String> sessions,
  }) = _BookmarkedSessionList;

  factory BookmarkedSessionList.fromJson(Map<String, dynamic> json) =>
      _$BookmarkedSessionListFromJson(json);
}

@riverpod
class BookmarkedSessions extends _$BookmarkedSessions {
  @override
  BookmarkedSessionList build() {
    final sharedPreference = ref.watch(sharedPreferencesInstanceProvider);
    final saved = sharedPreference.getStringList(_persistKey);

    if (saved != null) {
      return BookmarkedSessionList(sessions: saved.toSet());
    }

    return const BookmarkedSessionList();
  }

  void save({required String sessionId}) {
    state = state.copyWith(sessions: {...state.sessions, sessionId});
    final sharedPreference = ref.watch(sharedPreferencesInstanceProvider);

    unawaited(
      sharedPreference.setStringList(_persistKey, state.sessions.toList()),
    );
  }

  void remove({required String sessionId}) {
    state = state.copyWith(sessions: state.sessions..remove(sessionId));
    final sharedPreference = ref.watch(sharedPreferencesInstanceProvider);

    unawaited(
      sharedPreference.setStringList(_persistKey, state.sessions.toList()),
    );
  }
}

@riverpod
bool isBookmarked(
  IsBookmarkedRef ref, {
  required String sessionId,
}) {
  final bookmarkedSessions = ref.watch(bookmarkedSessionsProvider);
  return bookmarkedSessions.sessions.contains(sessionId);
}
