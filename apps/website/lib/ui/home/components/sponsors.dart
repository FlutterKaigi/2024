import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final class Sponsors extends StatelessWidget {
  const Sponsors({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);
    final sponsorLevelData = [
      SponsorLevelData(
        title: i18n.sponsors.levels.platinum,
        cardSize: (maxSize: 250, minSize: 250),
        wrapSpacing: (maxWrapSpacing: 48, minWrapSpacing: 48),
      ),
      SponsorLevelData(
        title: i18n.sponsors.levels.gold,
        cardSize: (maxSize: 180, minSize: 144),
        wrapSpacing: (maxWrapSpacing: 40, minWrapSpacing: 20),
        isLeftAlign: false,
      ),
      SponsorLevelData(
        title: i18n.sponsors.levels.silver,
        cardSize: (maxSize: 148, minSize: 96),
        wrapSpacing: (maxWrapSpacing: 28, minWrapSpacing: 12),
      ),
      SponsorLevelData(
        title: i18n.sponsors.levels.bronze,
        cardSize: (maxSize: 120, minSize: 96),
        wrapSpacing: (maxWrapSpacing: 28, minWrapSpacing: 12),
        isLeftAlign: false,
      ),
    ];

    return Column(
      children: [
        Text(
          i18n.sponsors.title,
          style: textTheme.availableFonts.poppins.regular.copyWith(
            fontSize: 48,
          ),
        ),
        Column(
          children: sponsorLevelData
              .expand(
                (levelData) => [
                  const Gap(80),
                  _sponsorListByLevel(theme, levelData, context),
                ],
              )
              .toList(),
        ),
      ],
    );
  }
}

Widget _sponsorListByLevel(
  ThemeData theme,
  SponsorLevelData levelData,
  BuildContext context,
) {
  final textTheme = theme.customThemeExtension.textTheme;
  final colorTheme = theme.customThemeExtension.colorTheme;
  final isMobile = MediaQuery.sizeOf(context).width < 768;
  final wrapSpacing = isMobile
      ? levelData.wrapSpacing.minWrapSpacing
      : levelData.wrapSpacing.maxWrapSpacing;

  return Container(
    padding: levelData.isLeftAlign
        ? const EdgeInsets.only(left: 24)
        : const EdgeInsets.only(right: 24),
    decoration: BoxDecoration(
      border: levelData.isLeftAlign
          ? Border(
              left: BorderSide(color: colorTheme.lightGrey),
            )
          : Border(
              right: BorderSide(color: colorTheme.lightGrey),
            ),
    ),
    child: Column(
      crossAxisAlignment: levelData.isLeftAlign
          ? CrossAxisAlignment.start
          : CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          levelData.title,
          style: textTheme.availableFonts.poppins.regular.copyWith(
            fontSize: 48,
          ),
        ),
        Wrap(
          spacing: wrapSpacing,
          runSpacing: wrapSpacing,
          children: List.generate(
            10,
            (_) => _sponsorCard(
              isMobile
                  ? levelData.cardSize.minSize
                  : levelData.cardSize.maxSize,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget _sponsorCard(double size) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () {},
      child: Container(
        width: size,
        height: size,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.6),
        ),
        child: const FittedBox(
          fit: BoxFit.fill,
          child: Icon(Icons.account_circle),
        ),
      ),
    ),
  );
}

final class SponsorLevelData {
  const SponsorLevelData({
    required this.title,
    required this.cardSize,
    required this.wrapSpacing,
    this.isLeftAlign = true,
  });
  final String title;
  final CardSize cardSize;
  final WrapSpacing wrapSpacing;
  final bool isLeftAlign;
}

typedef CardSize = ({double maxSize, double minSize});
typedef WrapSpacing = ({double maxWrapSpacing, double minWrapSpacing});
