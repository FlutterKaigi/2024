import 'dart:async';

import 'package:app_cores_core/providers.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_mode.g.dart';

const _persistKey = 'theme_mode';

@riverpod
class ThemeModeStore extends _$ThemeModeStore {
  @override
  ThemeMode build() {
    final sharedPreference = ref.watch(sharedPreferencesInstanceProvider);
    final stored = sharedPreference.getString(_persistKey);

    if (stored == null) {
      return ThemeMode.system;
    }

    return ThemeMode.values.byName(stored);
  }

  void update(ThemeMode mode) {
    state = mode;
    final sharedPreference = ref.read(sharedPreferencesInstanceProvider);
    unawaited(
      sharedPreference.setString(_persistKey, mode.name),
    );
  }
}
