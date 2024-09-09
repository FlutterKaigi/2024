// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme_extension.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$CustomThemeExtensionTailorMixin
    on ThemeExtension<CustomThemeExtension> {
  GradientThemeExtension get gradientTheme;

  @override
  CustomThemeExtension copyWith({
    GradientThemeExtension? gradientTheme,
  }) {
    return CustomThemeExtension(
      gradientTheme: gradientTheme ?? this.gradientTheme,
    );
  }

  @override
  CustomThemeExtension lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this as CustomThemeExtension;
    return CustomThemeExtension(
      gradientTheme:
          gradientTheme.lerp(other.gradientTheme, t) as GradientThemeExtension,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomThemeExtension &&
            const DeepCollectionEquality()
                .equals(gradientTheme, other.gradientTheme));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(gradientTheme),
    );
  }
}

extension CustomThemeExtensionThemeData on ThemeData {
  CustomThemeExtension get customThemeExtension =>
      extension<CustomThemeExtension>()!;
}

mixin _$GradientThemeExtensionTailorMixin
    on ThemeExtension<GradientThemeExtension> {
  LinearGradient get primary;
  LinearGradient get secondary;
  LinearGradient get tertiary;

  @override
  GradientThemeExtension copyWith({
    LinearGradient? primary,
    LinearGradient? secondary,
    LinearGradient? tertiary,
  }) {
    return GradientThemeExtension(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
    );
  }

  @override
  GradientThemeExtension lerp(
      covariant ThemeExtension<GradientThemeExtension>? other, double t) {
    if (other is! GradientThemeExtension) return this as GradientThemeExtension;
    return GradientThemeExtension(
      primary: t < 0.5 ? primary : other.primary,
      secondary: t < 0.5 ? secondary : other.secondary,
      tertiary: t < 0.5 ? tertiary : other.tertiary,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GradientThemeExtension &&
            const DeepCollectionEquality().equals(primary, other.primary) &&
            const DeepCollectionEquality().equals(secondary, other.secondary) &&
            const DeepCollectionEquality().equals(tertiary, other.tertiary));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary),
      const DeepCollectionEquality().hash(tertiary),
    );
  }
}
