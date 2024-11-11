import 'package:common_data/sponsor.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SponsorTypeLogo extends StatelessWidget {
  factory SponsorTypeLogo.withText(SponsorTypeV2 type) => SponsorTypeLogo._(
        type: type,
        showText: true,
      );

  factory SponsorTypeLogo.withoutText(SponsorTypeV2 type) => SponsorTypeLogo._(
        type: type,
        showText: false,
      );

  const SponsorTypeLogo._({
    required this.type,
    required this.showText,
  });

  final SponsorTypeV2 type;
  final bool showText;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final gradient = switch (type) {
      SponsorTypeV2.platinum => const LinearGradient(
          colors: [
            Color(0xFFE1ECFF),
            Color(0xFF8AB1E7),
          ],
        ),
      SponsorTypeV2.gold => const LinearGradient(
          colors: [
            Color(0xFFFFF200),
            Color(0xFFE19651),
          ],
        ),
      SponsorTypeV2.silver => const LinearGradient(
          colors: [
            Color(0xFFD3D3D4),
            Color(0xFFABABAB),
          ],
        ),
      SponsorTypeV2.bronze => const LinearGradient(
          colors: [
            Color(0xFFCD8237),
            Color(0xFF8D5A26),
          ],
        ),
      SponsorTypeV2.community => const LinearGradient(
          colors: [
            Color(0xFF7AEFB0),
            Color(0xFF40C9AD),
          ],
        ),
      SponsorTypeV2.translation => const LinearGradient(
          colors: [
            Color(0xFFEF7AD8),
            Color(0xFFC94053),
          ],
        ),
    };
    final textColor = switch (type) {
      SponsorTypeV2.platinum => const Color(0xFF1E3C6E),
      SponsorTypeV2.gold => const Color(0xFF6E1E1E),
      SponsorTypeV2.silver => const Color(0xFF6D6D6D),
      SponsorTypeV2.bronze => const Color(0xFF4E3115),
      SponsorTypeV2.community => const Color(0xFF066442),
      SponsorTypeV2.translation => const Color(0xFF6A0758),
    };

    final prefix = switch (type) {
      SponsorTypeV2.platinum => 'P',
      SponsorTypeV2.gold => 'G',
      SponsorTypeV2.silver => 'S',
      SponsorTypeV2.bronze => 'B',
      SponsorTypeV2.community => 'C',
      SponsorTypeV2.translation => 'T',
    };

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            gradient: gradient,
            shape: BoxShape.circle,
          ),
          child: SizedBox(
            height: 48,
            width: 48,
            child: Center(
              child: Text(
                prefix,
                style: textTheme.availableFonts.poppins.bold.copyWith(
                  color: textColor,
                  fontSize: 36,
                ),
              ),
            ),
          ),
        ),
        if (showText) ...[
          const Gap(8),
          Text(
            switch (type) {
              SponsorTypeV2.platinum => 'Platinum',
              SponsorTypeV2.gold => 'Gold',
              SponsorTypeV2.silver => 'Silver',
              SponsorTypeV2.bronze => 'Bronze',
              SponsorTypeV2.community => 'Community',
              SponsorTypeV2.translation => 'Translation',
            },
            style: textTheme.availableFonts.poppins.regular.copyWith(
              color: textColor,
              fontSize: 24,
            ),
          ),
        ],
      ],
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(EnumProperty<SponsorTypeV2>('type', type));
    properties.add(DiagnosticsProperty<bool>('showText', showText));
  }
}
