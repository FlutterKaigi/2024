import 'dart:async';

import 'package:app_cores_core/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_family.g.dart';

const _persistKey = 'font_family';

enum FontFamily {
  system,
  bizUdGothic,
  sawarabiGothic,
  mPlus1p,
  kaiseiOpti,
  yuseiMagic,
  dotGothic16,
  hachiMaruPop;

  String get label => switch (this) {
        FontFamily.system => 'System',
        FontFamily.bizUdGothic => 'BIZ UDGothic',
        FontFamily.sawarabiGothic => 'Sawarabi Gothic',
        FontFamily.mPlus1p => 'M PLUS 1p',
        FontFamily.kaiseiOpti => 'Kaisei Opti',
        FontFamily.yuseiMagic => 'Yusei Magic',
        FontFamily.dotGothic16 => 'DotGothic16',
        FontFamily.hachiMaruPop => 'Hachi Maru Pop',
      };
}

@riverpod
class FontFamilyStore extends _$FontFamilyStore {
  @override
  FontFamily build() {
    final sharedPreference =
        ref.watch(sharedPreferencesInstanceProvider).valueOrNull;
    final stored = sharedPreference?.getString(_persistKey);

    if (stored == null) {
      return FontFamily.system;
    }

    return FontFamily.values.byName(stored);
  }

  void update(FontFamily fontFamily) {
    state = fontFamily;
    final sharedPreference =
        ref.read(sharedPreferencesInstanceProvider).valueOrNull;
    unawaited(
      sharedPreference?.setString(_persistKey, fontFamily.name),
    );
  }
}
