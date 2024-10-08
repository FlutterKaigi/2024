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
    required this.gradientTheme,
  });

  factory CustomThemeExtension.light() => CustomThemeExtension(
        textTheme: TextThemeExtension.light(),
        colorTheme: ColorThemeExtension.light(),
        gradientTheme: GradientThemeExtension.light(),
      );

  final TextThemeExtension textTheme;
  final ColorThemeExtension colorTheme;
  final GradientThemeExtension gradientTheme;
}

@tailorMixinComponent
class TextThemeExtension extends ThemeExtension<TextThemeExtension>
    with _$TextThemeExtensionTailorMixin {
  TextThemeExtension({
    required this.body,
    required this.headline,
    required this.label,
    required this.footer,
    required this.caution,
    required this.availableFonts,
  });

  factory TextThemeExtension.light() {
    final availableFonts = AvailableFonts();
    final colorTheme = ColorThemeExtension.light();

    final grey = colorTheme.grey;
    return TextThemeExtension(
      headline: availableFonts.poppins.regular.copyWith(
        fontSize: 48,
        color: Colors.black,
      ),
      label: availableFonts.notoSansJp.medium.copyWith(
        fontSize: 18,
        color: Colors.black,
        height: 1.8,
      ),
      body: availableFonts.notoSansJp.regular.copyWith(
        fontSize: 16,
        color: grey,
        height: 1.8,
      ),
      footer: availableFonts.notoSansJp.regular.copyWith(
        fontSize: 15,
        color: Colors.black,
        height: 1.6,
      ),
      caution: availableFonts.notoSansJp.regular.copyWith(
        fontSize: 14,
        color: colorTheme.grey,
        height: 1.6,
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

  /// フッター部分
  final TextStyle footer;

  /// 注意事項
  final TextStyle caution;

  final AvailableFonts availableFonts;
}

@tailorMixinComponent
class ColorThemeExtension extends ThemeExtension<ColorThemeExtension>
    with _$ColorThemeExtensionTailorMixin {
  ColorThemeExtension({
    required this.grey,
    required this.lightGrey,
  });

  factory ColorThemeExtension.light() {
    return ColorThemeExtension(
      grey: const Color(0xFF666666),
      lightGrey: const Color(0xFFA6A6A6),
    );
  }

  final Color grey;
  final Color lightGrey;
}

@tailorMixinComponent
class GradientThemeExtension extends ThemeExtension<GradientThemeExtension>
    with _$GradientThemeExtensionTailorMixin {
  GradientThemeExtension({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  factory GradientThemeExtension.light() => GradientThemeExtension(
        primary: const LinearGradient(
          colors: [
            Color(0xFF00F5A0),
            Color(0xFF00D9F5),
          ],
        ),
        secondary: const LinearGradient(
          colors: [
            Color(0xFFEECDA3),
            Color(0xFFEF629F),
          ],
        ),
        tertiary: const LinearGradient(
          colors: [
            Color(0xFFFFF275),
            Color(0xFF1CDAC5),
          ],
        ),
      );

  final LinearGradient primary;
  final LinearGradient secondary;
  final LinearGradient tertiary;
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
