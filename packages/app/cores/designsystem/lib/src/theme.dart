import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

@riverpod
ThemeData theme(ThemeRef ref, ColorScheme? colorScheme) {
  final defaultLightScheme = ColorScheme.fromSeed(
    seedColor: _seedColor,
  );
  return ThemeData.from(
    colorScheme: colorScheme ?? defaultLightScheme,
  );
}

@riverpod
ThemeData darkTheme(DarkThemeRef ref, ColorScheme? colorScheme) {
  final defaultDarkColorScheme = ColorScheme.fromSeed(
    seedColor: _seedColor,
    brightness: Brightness.dark,
  );
  return ThemeData.from(
    colorScheme: colorScheme ?? defaultDarkColorScheme,
  );
}

const _seedColor = Color(0xFF005AC1);
