import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/components/header/hamburger_menu.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/home/components/coming_soon.dart';
import 'package:conference_2024_website/ui/home/components/lead.dart';
import 'package:conference_2024_website/ui/home/components/speaker_wanted.dart';
import 'package:conference_2024_website/ui/home/components/title_and_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

final class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 960;
    final showAppbar = useState<bool>(false);
    final scrollController = useScrollController();

    return SelectionArea(
      child: NotificationListener(
        onNotification: (notification) {
          if (notification is ScrollUpdateNotification) {
            // 300px以上スクロールしたらAppBarを表示
            showAppbar.value = notification.metrics.pixels > 300;
          }
          return true;
        },
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: SiteHeader(
            onTitleTap: () async => scrollController.animateTo(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOutCirc,
            ),
            showAppBar: showAppbar.value,
          ),
          body: CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverToBoxAdapter(
                child: _bodyContentSliver(),
              ),
              const SliverToBoxAdapter(
                child: SiteFooter(),
              ),
            ],
          ),
          endDrawer: isMobile ? const HamburgerMenu() : null,
        ),
      ),
    );
  }

  Widget _bodyContentSliver() {
    return const Stack(
      children: [
        _Background(),
        _Body(),
      ],
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const _TitleAndLogo(),
        Column(
          children: [
            ContentsMargin.narrow(
              child: const _Lead(),
            ),
            const Gap(128),
            ContentsMargin.wide(
              child: const SpeakerWanted(),
            ),
            const Gap(128),
            ContentsMargin.narrow(
              child: const ComingSoon(),
            ),
          ],
        ),
      ],
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
      mainAxisSize: MainAxisSize.min,
      children: [
        BackgroundTop(),
        // BackgroundBottom(),
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
      vertical: 64.0,
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
