// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'theme_extension.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$CustomThemeExtensionTailorMixin
    on ThemeExtension<CustomThemeExtension> {
  TextThemeExtension get textTheme;
  ColorThemeExtension get colorTheme;
  GradientThemeExtension get gradientTheme;

  @override
  CustomThemeExtension copyWith({
    TextThemeExtension? textTheme,
    ColorThemeExtension? colorTheme,
    GradientThemeExtension? gradientTheme,
  }) {
    return CustomThemeExtension(
      textTheme: textTheme ?? this.textTheme,
      colorTheme: colorTheme ?? this.colorTheme,
      gradientTheme: gradientTheme ?? this.gradientTheme,
    );
  }

  @override
  CustomThemeExtension lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this as CustomThemeExtension;
    return CustomThemeExtension(
      textTheme: textTheme.lerp(other.textTheme, t) as TextThemeExtension,
      colorTheme: colorTheme.lerp(other.colorTheme, t) as ColorThemeExtension,
      gradientTheme:
          gradientTheme.lerp(other.gradientTheme, t) as GradientThemeExtension,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CustomThemeExtension &&
            const DeepCollectionEquality().equals(textTheme, other.textTheme) &&
            const DeepCollectionEquality()
                .equals(colorTheme, other.colorTheme) &&
            const DeepCollectionEquality()
                .equals(gradientTheme, other.gradientTheme));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(textTheme),
      const DeepCollectionEquality().hash(colorTheme),
      const DeepCollectionEquality().hash(gradientTheme),
    );
  }
}

extension CustomThemeExtensionThemeData on ThemeData {
  CustomThemeExtension get customThemeExtension =>
      extension<CustomThemeExtension>()!;
}

mixin _$TextThemeExtensionTailorMixin on ThemeExtension<TextThemeExtension> {
  TextStyle get headline;
  TextStyle get body;
  TextStyle get label;
  TextStyle get footer;
  TextStyle get caution;
  AvailableFonts get availableFonts;

  @override
  TextThemeExtension copyWith({
    TextStyle? headline,
    TextStyle? body,
    TextStyle? label,
    TextStyle? footer,
    TextStyle? caution,
    AvailableFonts? availableFonts,
  }) {
    return TextThemeExtension(
      headline: headline ?? this.headline,
      body: body ?? this.body,
      label: label ?? this.label,
      footer: footer ?? this.footer,
      caution: caution ?? this.caution,
      availableFonts: availableFonts ?? this.availableFonts,
    );
  }

  @override
  TextThemeExtension lerp(
      covariant ThemeExtension<TextThemeExtension>? other, double t) {
    if (other is! TextThemeExtension) return this as TextThemeExtension;
    return TextThemeExtension(
      headline: TextStyle.lerp(headline, other.headline, t)!,
      body: TextStyle.lerp(body, other.body, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      footer: TextStyle.lerp(footer, other.footer, t)!,
      caution: TextStyle.lerp(caution, other.caution, t)!,
      availableFonts: t < 0.5 ? availableFonts : other.availableFonts,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextThemeExtension &&
            const DeepCollectionEquality().equals(headline, other.headline) &&
            const DeepCollectionEquality().equals(body, other.body) &&
            const DeepCollectionEquality().equals(label, other.label) &&
            const DeepCollectionEquality().equals(footer, other.footer) &&
            const DeepCollectionEquality().equals(caution, other.caution) &&
            const DeepCollectionEquality()
                .equals(availableFonts, other.availableFonts));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(headline),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(footer),
      const DeepCollectionEquality().hash(caution),
      const DeepCollectionEquality().hash(availableFonts),
    );
  }
}

mixin _$ColorThemeExtensionTailorMixin on ThemeExtension<ColorThemeExtension> {
  Color get grey;
  Color get lightGrey;

  @override
  ColorThemeExtension copyWith({
    Color? grey,
    Color? lightGrey,
  }) {
    return ColorThemeExtension(
      grey: grey ?? this.grey,
      lightGrey: lightGrey ?? this.lightGrey,
    );
  }

  @override
  ColorThemeExtension lerp(
      covariant ThemeExtension<ColorThemeExtension>? other, double t) {
    if (other is! ColorThemeExtension) return this as ColorThemeExtension;
    return ColorThemeExtension(
      grey: Color.lerp(grey, other.grey, t)!,
      lightGrey: Color.lerp(lightGrey, other.lightGrey, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ColorThemeExtension &&
            const DeepCollectionEquality().equals(grey, other.grey) &&
            const DeepCollectionEquality().equals(lightGrey, other.lightGrey));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(grey),
      const DeepCollectionEquality().hash(lightGrey),
    );
  }
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
