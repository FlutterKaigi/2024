import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/pages/session/session_page.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SessionSection extends StatelessWidget {
  const SessionSection({super.key});

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
                  i18n.session.title,
                  style: textTheme.headline,
                ),
                const Gap(2),
                Text(
                  i18n.session.messages.join('\n'),
                  style: textTheme.body,
                ),
                const Gap(16),
                SizedBox(
                  width: 480,
                  child: AppButton.secondary(
                    label: Text(i18n.session.link),
                    onPressed: () async =>
                        const SessionRoute().push<void>(context),
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
