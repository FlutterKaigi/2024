import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/feature/session/ui/session_table.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/components/header/hamburger_menu.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/pages/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class SessionRoute extends GoRouteData {
  const SessionRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SessionPage();
  }
}

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).isMobile;

    return SelectionArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SiteHeader(
          onTitleTap: () async => const HomeRoute().go(context),
          showAppBar: true,
          showHeaderNavigation: false,
        ),
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
        endDrawer: isMobile ? const HamburgerMenu() : null,
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

    return SafeArea(
      child: ContentsMargin.narrow(
        child: Column(
          children: [
            const Row(),
            const Gap(80),
            Text(
              i18n.session.title,
              style: textTheme.headline,
            ),
            const Gap(80),
            const SessionTable(),
          ],
        ),
      ),
    );
  }
}
