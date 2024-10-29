import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/pages/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/pages/session/components/session_details_card.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SessionDetailsRoute extends GoRouteData {
  const SessionDetailsRoute({
    required this.sessionId,
  });

  final String sessionId;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Consumer(
      builder: (context, ref, child) {
        final sessionDetails = ref.watch(sessionDetailsProvider(sessionId));

        return switch (sessionDetails) {
          // ignore: only_throw_errors
          AsyncError(:final error) => throw Exception(error.toString()),
          AsyncValue(:final value) when value != null => SessionDetailsPage(
              sessionDetails: value,
            ),
          _ => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
        };
      },
    );
  }
}

class SessionDetailsPage extends HookConsumerWidget {
  const SessionDetailsPage({
    required this.sessionDetails,
    super.key,
  });

  final SessionDetails sessionDetails;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SelectionArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SiteHeader(
          onTitleTap: () async {
            if (Navigator.of(context).canPop()) {
              Navigator.of(context).pop();
            } else {
              const HomeRoute().go(context);
            }
          },
          showAppBar: true,
          showHeaderNavigation: false,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: BackgroundTop(),
                  ),
                  _Body(
                    sessionDetails: sessionDetails,
                  ),
                ],
              ),
            ),
            const SliverToBoxAdapter(
              child: SiteFooter(),
            ),
          ],
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.sessionDetails,
  });

  final SessionDetails sessionDetails;

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
            Text(
              i18n.session.title,
              style: textTheme.headline,
            ),
            const Gap(80),
            SessionDetailsCard(
              session: sessionDetails.session,
            ),
          ],
        ),
      ),
    );
  }
}
