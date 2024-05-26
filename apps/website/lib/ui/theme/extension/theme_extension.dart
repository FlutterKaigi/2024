// ignore_for_file: annotate_overrides

import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'theme_extension.tailor.dart';

@TailorMixin(
  themeGetter: ThemeGetter.onThemeData,
)
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension>
    with _$CustomThemeExtensionTailorMixin {
  CustomThemeExtension({
    required this.textTheme,
    required this.colorTheme,
  });

  factory CustomThemeExtension.light() => CustomThemeExtension(
        textTheme: TextThemeExtension.light(),
        colorTheme: ColorThemeExtension.light(),
      );

  final TextThemeExtension textTheme;
  final ColorThemeExtension colorTheme;
}

@tailorMixinComponent
class TextThemeExtension extends ThemeExtension<TextThemeExtension>
    with _$TextThemeExtensionTailorMixin {
  TextThemeExtension({
    required this.body,
    required this.headline,
    required this.label,
    required this.availableFonts,
  });

  factory TextThemeExtension.light() {
    final availableFonts = AvailableFonts();
    final colorTheme = ColorThemeExtension.light();

    final grey = colorTheme.grey;
    return TextThemeExtension(
      headline: availableFonts.poppins.bold.copyWith(
        fontSize: 48,
        color: Colors.black,
      ),
      label: availableFonts.notoSansJp.medium.copyWith(
        fontSize: 16,
        color: Colors.black,
        height: 1.8,
      ),
      body: availableFonts.notoSansJp.regular.copyWith(
        fontSize: 16,
        color: grey,
        height: 1.8,
      ),
      availableFonts: AvailableFonts(),
    );
  }

  /// ヘッダー部分
  final TextStyle headline;

  /// 通常のテキストのスタイル
  final TextStyle body;

  /// ボタンなど
  final TextStyle label;

  final AvailableFonts availableFonts;
}

@tailorMixinComponent
class ColorThemeExtension extends ThemeExtension<ColorThemeExtension>
    with _$ColorThemeExtensionTailorMixin {
  ColorThemeExtension({
    required this.grey,
  });

  factory ColorThemeExtension.light() {
    return ColorThemeExtension(
      grey: const Color(0xFF666666),
    );
  }

  final Color grey;
}

class AvailableFonts {
  AvailableFonts()
      : notoSansJp = (
          regular: const TextStyle(
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w400,
          ),
          medium: const TextStyle(
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w500,
          ),
          bold: const TextStyle(
            fontFamily: 'NotoSansJP',
            fontWeight: FontWeight.w700,
          ),
        ),
        poppins = (
          regular: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
          ),
          medium: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w500,
          ),
          bold: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        );

  ({
    TextStyle regular,
    TextStyle medium,
    TextStyle bold,
  }) notoSansJp;

  ({
    TextStyle regular,
    TextStyle medium,
    TextStyle bold,
  }) poppins;
}

List<TextStyle> get allFonts {
  final availableFonts = AvailableFonts();
  return [
    availableFonts.notoSansJp.regular,
    availableFonts.notoSansJp.medium,
    availableFonts.notoSansJp.bold,
    availableFonts.poppins.regular,
    availableFonts.poppins.medium,
    availableFonts.poppins.bold,
  ].toList();
}
