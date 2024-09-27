import 'package:collection/collection.dart';
import 'package:common_data/sponsor.dart';
import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/state/sponsor_notifier.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final class Sponsors extends HookConsumerWidget {
  const Sponsors({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);
    final sponsors = ref.watch(sponsorProvider);

    return switch (sponsors) {
      AsyncLoading() => const Center(child: CircularProgressIndicator()),
      AsyncError() => _errorRetryButton(
          () => ref.invalidate(sponsorProvider),
          i18n,
          textTheme,
        ),
      AsyncData<List<Sponsor>>(:final value) => sponsorsSection(
          value,
          theme,
          context,
        ),
      _ => const SizedBox.shrink(),
    };
  }
}

Widget sponsorsSection(
  List<Sponsor> sponsors,
  ThemeData theme,
  BuildContext context,
) {
  final textTheme = theme.customThemeExtension.textTheme;
  final i18n = Translations.of(context);

  // スポンサーのレベルによって分ける
  final mapOfLevels = sponsors.groupListsBy((e) => e.type);

  return Column(
    children: [
      Text(
        i18n.sponsors.title,
        style: textTheme.availableFonts.poppins.regular.copyWith(
          fontSize: 48,
        ),
      ),
      Column(
        children: mapOfLevels.entries.map((listByLevel) {
          return _sponsorListByLevel(theme, listByLevel.value, context);
        }).toList(),
      ),
    ],
  );
}

Widget _sponsorListByLevel(
  ThemeData theme,
  List<Sponsor> sponsors,
  BuildContext context,
) {
  final i18n = Translations.of(context);
  final textTheme = theme.customThemeExtension.textTheme;
  final colorTheme = theme.customThemeExtension.colorTheme;
  final isMobile = MediaQuery.sizeOf(context).width < 768;

  final sponsorLevelData = [
    SponsorLevelData(
      title: i18n.sponsors.levels.platinum,
      cardSize: (maxSize: 250, minSize: 250),
      wrapSpacing: (maxWrapSpacing: 48, minWrapSpacing: 48),
      type: SponsorType.platinum,
    ),
    SponsorLevelData(
      title: i18n.sponsors.levels.gold,
      cardSize: (maxSize: 180, minSize: 144),
      wrapSpacing: (maxWrapSpacing: 40, minWrapSpacing: 20),
      type: SponsorType.gold,
      isLeftAlign: false,
    ),
    SponsorLevelData(
      title: i18n.sponsors.levels.silver,
      cardSize: (maxSize: 148, minSize: 96),
      wrapSpacing: (maxWrapSpacing: 28, minWrapSpacing: 12),
      type: SponsorType.silver,
    ),
    SponsorLevelData(
      title: i18n.sponsors.levels.bronze,
      cardSize: (maxSize: 120, minSize: 96),
      wrapSpacing: (maxWrapSpacing: 28, minWrapSpacing: 12),
      type: SponsorType.bronze,
      isLeftAlign: false,
    ),
  ];
  final levelData = sponsorLevelData.firstWhere(
    (e) => e.type == sponsors.first.type,
  );

  final wrapSpacing = isMobile
      ? levelData.wrapSpacing.minWrapSpacing
      : levelData.wrapSpacing.maxWrapSpacing;

  return Container(
    margin: const EdgeInsets.only(top: 80),
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
            fontSize: isMobile ? 36 : 48,
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
          boxShadow: [
            CustomBoxShadow(
              color: Colors.black.withOpacity(0.25),
              offset: const Offset(2, 2),
              blurRadius: 4,
              blurStyle: BlurStyle.outer,
            ),
          ],
        ),
        child: const FittedBox(
          fit: BoxFit.fill,
          child: Icon(Icons.account_circle),
        ),
      ),
    ),
  );
}

Widget _errorRetryButton(
  void Function() onRetryPressed,
  Translations i18n,
  TextThemeExtension textTheme,
) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        Text(
          i18n.sponsors.sponsors_error,
          style: textTheme.body,
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: onRetryPressed,
          child: Text(
            i18n.retry,
            style: textTheme.label,
          ),
        ),
      ],
    ),
  );
}

final class SponsorLevelData {
  const SponsorLevelData({
    required this.title,
    required this.cardSize,
    required this.wrapSpacing,
    required this.type,
    this.isLeftAlign = true,
  });
  final String title;
  final CardSize cardSize;
  final WrapSpacing wrapSpacing;
  final bool isLeftAlign;
  final SponsorType type;
}

typedef CardSize = ({double maxSize, double minSize});
typedef WrapSpacing = ({double maxWrapSpacing, double minWrapSpacing});

final class CustomBoxShadow extends BoxShadow {
  const CustomBoxShadow({
    super.color,
    super.offset,
    super.blurRadius,
    BlurStyle blurStyle = BlurStyle.normal,
  }) : _blurStyle = blurStyle;

  final BlurStyle _blurStyle;

  @override
  Paint toPaint() {
    final result = Paint()
      ..color = color
      ..maskFilter = MaskFilter.blur(_blurStyle, blurSigma);
    return result;
  }
}
