import 'package:flutter/material.dart';
import 'package:ticket_web/gen/fonts.gen.dart';
import 'package:ticket_web/gen/i18n/strings.g.dart';

class TitleAndLogo extends StatelessWidget {
  const TitleAndLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final i18n = Translations.of(context);

    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/icon.webp',
                    height: 94,
                    width: 94,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    i18n.flutterKaigi,
                    style: textTheme.titleLarge?.copyWith(
                      fontFamily: FontFamily.poppins,
                      fontSize: 88,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    i18n.homePage.titleAndLogo.date,
                    style: textTheme.titleMedium?.copyWith(
                      fontFamily: FontFamily.poppins,
                      fontSize: 32,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  const SizedBox(width: 40),
                  Text(
                    i18n.year,
                    style: textTheme.titleLarge?.copyWith(
                      fontSize: 120,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.poppins,
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
          Text(
            i18n.homePage.titleAndLogo.location,
            style: textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
