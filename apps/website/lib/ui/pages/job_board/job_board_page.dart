import 'package:conference_2024_website/core/extension/size_ex.dart';
import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/feature/job_board/data/job_board_notifier.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/components/header/hamburger_menu.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/pages/home/components/background/background_top.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(jobBoardProvider);

    final child = switch (state) {
      AsyncData(:final value) => const Text('OK'),
      AsyncError(:final error) => Text(error.toString()),
      _ => const Center(
          child: CircularProgressIndicator.adaptive(),
        ),
    };

    return ContentsMargin.narrow(
      child: child,
    );
  }
}
