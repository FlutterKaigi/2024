
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
    required this.gradientTheme,
  });

  factory CustomThemeExtension.light() => CustomThemeExtension(
        gradientTheme: GradientThemeExtension.light(),
      );

  final GradientThemeExtension gradientTheme;
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
