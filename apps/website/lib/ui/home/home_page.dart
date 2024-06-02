import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/home/components/background/background_bottom.dart';
import 'package:conference_2024_website/ui/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/home/components/title_and_logo.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Stack(
            children: [
              _Background(),
              _Body(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;
    final i18n = Translations.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _TitleAndLogo(),
        Text(
          i18n.title,
          style: textTheme.headline,
        ),
        const SizedBox(height: 16),
        AppButton.primaryLink(
          label: const Text('Click me!'),
          link: Uri.parse('/sample-1'),
          leading: const Icon(Icons.link),
        ),
        const SizedBox(height: 16),
        AppButton.secondaryLink(
          label: const Text('Click me!'),
          link: Uri.parse('/sample-2'),
          leading: const Icon(Icons.link),
        ),
      ],
    );
  }
}

class _Background extends StatelessWidget {
  const _Background();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BackgroundTop(),
        BackgroundBottom(),
      ],
    );
  }
}

class _TitleAndLogo extends StatelessWidget {
  const _TitleAndLogo();

  @override
  Widget build(BuildContext context) {
    const maxPadding = (
      horizontal: 88.0,
      vertical: 110.0,
    );
    const minPadding = (
      horizontal: 24.0,
      vertical: 24.0,
    );
    final width = MediaQuery.of(context).size.width;
    final threshold = 600 + maxPadding.horizontal * 2;
    final padding = width > threshold ? maxPadding : minPadding;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: padding.horizontal,
        vertical: padding.vertical,
      ),
      child: const TitleAndLogo(),
    );
  }
}
