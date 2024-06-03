import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/home/components/background/background_bottom.dart';
import 'package:conference_2024_website/ui/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/home/components/coming_soon.dart';
import 'package:conference_2024_website/ui/home/components/lead.dart';
import 'package:conference_2024_website/ui/home/components/title_and_logo.dart';
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
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return const ContentsMargin(
      child: Column(
        children: [
          _TitleAndLogo(),
          _Lead(),
          SizedBox(height: 16),
          ComingSoon(),
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
