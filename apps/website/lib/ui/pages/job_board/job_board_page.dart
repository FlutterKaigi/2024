import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/components/header/hamburger_menu.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/pages/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/pages/job_board/components/job_board_view.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class JobBoardRoute extends GoRouteData {
  const JobBoardRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const JobBoardPage();
  }
}

class JobBoardPage extends StatelessWidget {
  const JobBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return SelectionArea(
      child: Scaffold(
        appBar: SiteHeader(
          showAppBar: true,
          showHeaderNavigation: false,
          onTitleTap: () async => const HomeRoute().go(context),
        ),
        endDrawer: isMobile ? const HamburgerMenu() : null,
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  FittedBox(
                    fit: BoxFit.cover,
                    child: BackgroundTop(),
                  ),
                  _Body(),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SiteFooter(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final child = Column(
      children: [
        const Row(),
        const Gap(120),
        Text(
          i18n.sponsors.title,
          style: textTheme.availableFonts.poppins.regular.copyWith(
            fontSize: 48,
          ),
        ),
        const Gap(80),
        const JobBoardView(),
        const Gap(80),
      ],
    );

    return ContentsMargin.narrow(
      child: child,
    );
  }
}
