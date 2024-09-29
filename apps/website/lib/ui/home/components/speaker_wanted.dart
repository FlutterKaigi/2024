import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final class SpeakerWanted extends StatelessWidget {
  const SpeakerWanted({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final textTheme = Theme.of(context).customThemeExtension.textTheme;

    return IntrinsicHeight(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(90),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  i18n.speaker.title,
                  style: textTheme.headline,
                ),
                const Gap(2),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    i18n.speaker.messages.join('\n'),
                    style: textTheme.body,
                  ),
                ),
                const Gap(24),
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    i18n.speaker.caution,
                    style: textTheme.caution,
                  ),
                ),
                const Gap(16),
                SizedBox(
                  width: 480,
                  child: AppButton.secondaryLink(
                    label: Text(i18n.speaker.apply),
                    link: Uri.parse(
                      'https://fortee.jp/flutterkaigi-2024/speaker/callfor/regular-session/callfor',
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(24),
          VerticalDivider(
            width: 1,
            thickness: 1,
            color: Theme.of(context).customThemeExtension.colorTheme.lightGrey,
          ),
        ],
      ),
    );
  }
}
