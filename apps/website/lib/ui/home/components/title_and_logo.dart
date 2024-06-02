import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class TitleAndLogo extends StatelessWidget {
  const TitleAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final colorTheme = theme.customThemeExtension.colorTheme;

    final i18n = Translations.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/icon.png',
                    height: 94,
                    width: 94,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    i18n.title,
                    style: textTheme.availableFonts.poppins.medium.copyWith(
                      fontSize: 87,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'November\n21(Thu) - 22(Fri)',
                    style: textTheme.availableFonts.poppins.regular.copyWith(
                      fontSize: 33,
                      color: colorTheme.grey,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(width: 40),
                  Text(
                    '2024',
                    style: textTheme.availableFonts.poppins.bold.copyWith(
                      fontSize: 120,
                      // Baseline上下の余白を消すため
                      // 2024を表示する時にその余白は不要
                      height: 0.8,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            '有明セントラルタワーホール&カンファレンス',
            style: textTheme.body,
          ),
        ),
      ],
    );
  }
}
