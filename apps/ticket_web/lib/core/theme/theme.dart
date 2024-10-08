import 'package:flutter/material.dart';
import 'package:ticket_web/core/gen/fonts.gen.dart';
import 'package:ticket_web/core/theme/extension/theme_extension.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  useMaterial3: true,
  fontFamily: FontFamily.notoSansJP,
  extensions: [
    CustomThemeExtension.light(),
  ],
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.blueAccent,
  ),
);
