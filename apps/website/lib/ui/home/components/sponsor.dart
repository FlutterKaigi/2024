import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Sponsor extends StatelessWidget {
  const Sponsor({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeExtension = theme.customThemeExtension;
    final textTheme = theme.customThemeExtension.textTheme;

    final i18n = Translations.of(context);

    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: themeExtension.colorTheme.lightGrey,
          ),
          const Gap(24),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  i18n.sponsor.title,
                  style: textTheme.headline,
                ),
                const Gap(2),
                Text(
                  i18n.sponsor.messages.join('\n'),
                  style: textTheme.body,
                ),
                const Gap(16),
                SizedBox(
                  width: 480,
                  child: AppButton.secondaryLink(
                    label: Text(i18n.sponsor.apply),
                    link: Uri.parse(
                      'https://medium.com/flutterkaigi/flutterkaigi-2024-%E3%82%B9%E3%83%9D%E3%83%B3%E3%82%B5%E3%83%BC%E5%8B%9F%E9%9B%86%E3%81%AB%E3%81%A4%E3%81%84%E3%81%A6-ca53d4693580',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
