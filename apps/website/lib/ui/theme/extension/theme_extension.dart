// ignore_for_file: annotate_overrides

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  });

  factory TextThemeExtension.light() {
    final availableFonts = _AvailableFonts();
    final colorTheme = ColorThemeExtension.light();

    final grey = colorTheme.grey;
    return TextThemeExtension(
      headline: availableFonts.poppins.bold.copyWith(
        fontSize: 36,
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
    );
  }

  /// ヘッダー部分
  final TextStyle headline;

  /// 通常のテキストのスタイル
  final TextStyle body;

  /// ボタンなど
  final TextStyle label;
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

class _AvailableFonts {
  _AvailableFonts()
      : notoSansJp = (
          regular: GoogleFonts.notoSans(fontWeight: FontWeight.w400),
          medium: GoogleFonts.notoSans(fontWeight: FontWeight.w500),
          bold: GoogleFonts.notoSans(fontWeight: FontWeight.w700),
        ),
        poppins = (
          regular: GoogleFonts.poppins(fontWeight: FontWeight.w400),
          medium: GoogleFonts.poppins(fontWeight: FontWeight.w500),
          bold: GoogleFonts.poppins(fontWeight: FontWeight.w700),
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

List<String> get allFonts {
  final availableFonts = _AvailableFonts();
  return [
    availableFonts.notoSansJp.regular.fontFamily,
    availableFonts.notoSansJp.medium.fontFamily,
    availableFonts.notoSansJp.bold.fontFamily,
    availableFonts.poppins.regular.fontFamily,
    availableFonts.poppins.medium.fontFamily,
    availableFonts.poppins.bold.fontFamily,
  ].whereNotNull().toList();
}
