import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    final dashImage = Image.asset(
      'assets/images/dash.webp',
      alignment: Alignment.centerRight,
      width: 280,
    );

    final t = Translations.of(context);
    final textTheme = Theme.of(context).customThemeExtension.textTheme;

    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            t.comingSoon.message,
            style: textTheme.availableFonts.poppins.medium.copyWith(
              fontSize: 48,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: dashImage,
        ),
      ],
    );
  }
}
