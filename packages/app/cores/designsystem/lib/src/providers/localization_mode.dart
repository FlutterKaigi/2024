import 'dart:async';

import 'package:app_cores_core/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'localization_mode.g.dart';

const _persistKey = 'localization_mode';

enum LocalizationMode {
  system,
  japanese,
  english,
}

@riverpod
class LocalizationModeStore extends _$LocalizationModeStore {
  @override
  LocalizationMode build() {
    final sharedPreferences = ref.watch(sharedPreferencesInstanceProvider);
    final stored = sharedPreferences.getString(_persistKey);

    return LocalizationMode.values.firstWhere(
      (element) => element.name == stored,
      orElse: () => LocalizationMode.system,
    );
  }

  Future<void> update(LocalizationMode localizationMode) async {
    final sharedPreferences = ref.read(sharedPreferencesInstanceProvider);
    await sharedPreferences.setString(_persistKey, localizationMode.name);

    state = localizationMode;
  }
}
