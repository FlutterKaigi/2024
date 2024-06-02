import 'package:conference_2024_website/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/button/app_button.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/home/components/background/background_bottom.dart';
import 'package:conference_2024_website/ui/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/home/components/coming_soon.dart';
import 'package:conference_2024_website/ui/home/components/lead.dart';
import 'package:conference_2024_website/ui/home/components/title_and_logo.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: _bodyContentSliver(),
          ),
          const SliverToBoxAdapter(
            child: SiteFooter(),
          ),
        ],
      ),
    );
  }

  Widget _bodyContentSliver() {
    return const IntrinsicHeight(
      child: Stack(
        children: [
          _Background(),
          _Body(),
          ComingSoon(),
        ],
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
    return ContentsMargin(
      child: Column(
        children: [
          const _TitleAndLogo(),
          const _Lead(),
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
      ),
    );
  }
}

class _Lead extends StatelessWidget {
  const _Lead();

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child: SizedBox(
        width: 512,
        child: Lead(),
      ),
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
