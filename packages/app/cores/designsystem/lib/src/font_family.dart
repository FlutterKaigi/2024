import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_family.g.dart';

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
    return FontFamily.system;
  }

  void update(FontFamily fontFamily) {
    state = fontFamily;
  }
}
