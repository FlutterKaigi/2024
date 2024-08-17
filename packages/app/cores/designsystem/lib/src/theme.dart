import 'package:app_cores_designsystem/src/font_family.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref, ColorScheme? colorScheme) {
  final fontFamily = ref.watch(fontFamilyStoreProvider);
  final defaultLightScheme = ColorScheme.fromSeed(
    seedColor: _seedColor,
  );
  final baseTheme = ThemeData.from(
    colorScheme: colorScheme ?? defaultLightScheme,
  );

  return _setFontFamily(
    baseTheme: baseTheme,
    fontFamily: fontFamily,
  );
}

@riverpod
ThemeData darkTheme(DarkThemeRef ref, ColorScheme? colorScheme) {
  final fontFamily = ref.watch(fontFamilyStoreProvider);
  final defaultDarkColorScheme = ColorScheme.fromSeed(
    seedColor: _seedColor,
    brightness: Brightness.dark,
  );
  final baseTheme = ThemeData.from(
    colorScheme: colorScheme ?? defaultDarkColorScheme,
  );

  return _setFontFamily(
    baseTheme: baseTheme,
    fontFamily: fontFamily,
  );
}

const _seedColor = Color(0xFF005AC1);

ThemeData _setFontFamily({
  required ThemeData baseTheme,
  required FontFamily fontFamily,
}) =>
    switch (fontFamily) {
      FontFamily.system => baseTheme,
      FontFamily.bizUdGothic => baseTheme.copyWith(
          textTheme: GoogleFonts.bizUDGothicTextTheme(
            baseTheme.textTheme,
          ),
        ),
      FontFamily.sawarabiGothic => baseTheme.copyWith(
          textTheme: GoogleFonts.sawarabiGothicTextTheme(
            baseTheme.textTheme,
          ),
        ),
      FontFamily.mPlus1p => baseTheme.copyWith(
          textTheme: GoogleFonts.mPlus1pTextTheme(
            baseTheme.textTheme,
          ),
        ),
      FontFamily.kaiseiOpti => baseTheme.copyWith(
          textTheme: GoogleFonts.kaiseiOptiTextTheme(
            baseTheme.textTheme,
          ),
        ),
      FontFamily.yuseiMagic => baseTheme.copyWith(
          textTheme: GoogleFonts.yuseiMagicTextTheme(
            baseTheme.textTheme,
          ),
        ),
      FontFamily.dotGothic16 => baseTheme.copyWith(
          textTheme: GoogleFonts.dotGothic16TextTheme(
            baseTheme.textTheme,
          ),
        ),
      FontFamily.hachiMaruPop => baseTheme.copyWith(
          textTheme: GoogleFonts.hachiMaruPopTextTheme(
            baseTheme.textTheme,
          ),
        ),
    };
