import 'package:collection/collection.dart';
import 'package:common_data/sponsor.dart';
import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/feature/sponsor/data/sponsor_notifier.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:conference_2024_website/ui/components/contents_margin/contents_margin.dart';
import 'package:conference_2024_website/ui/components/footer/site_footer.dart';
import 'package:conference_2024_website/ui/components/header/site_header.dart';
import 'package:conference_2024_website/ui/pages/home/components/background/background_top.dart';
import 'package:conference_2024_website/ui/pages/sponsor/components/sponsor_view.dart';
import 'package:conference_2024_website/ui/theme/extension/theme_extension.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SponsorRoute extends GoRouteData {
  const SponsorRoute({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return Consumer(
      builder: (context, ref, child) {
        final sponsorsState = ref.watch(sponsorProvider);

        return switch (sponsorsState) {
          AsyncLoading() => const Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          AsyncError(:final error) => _OnSponsorNotFoundPage(
              message: error.toString(),
            ),
          AsyncValue(:final value) => () {
              final sponsor =
                  value?.firstWhereOrNull((sponsor) => sponsor.id == id);
              if (sponsor == null) {
                return _OnSponsorNotFoundPage(
                  message: Translations.of(context).sponsors.sponsorNotFound,
                );
              }
              return SponsorPage(sponsor: sponsor);
            }(),
        };
      },
    );
  }
}

class SponsorPage extends HookWidget {
  const SponsorPage({
    required this.sponsor,
    super.key,
  });

  final SponsorWithSessionV3 sponsor;

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    return SelectionArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: SiteHeader(
          onTitleTap: () async => const HomeRoute().go(context),
          showAppBar: true,
          showHeaderNavigation: false,
        ),
        body: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Stack(
                children: [
                  const FittedBox(
                    fit: BoxFit.cover,
                    child: BackgroundTop(),
                  ),
                  _Body(
                    sponsor: sponsor,
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

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<SponsorWithSessionV3>('sponsor', sponsor));
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.sponsor,
  });

  final SponsorWithSessionV3 sponsor;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    final theme = Theme.of(context);
    final textTheme = theme.customThemeExtension.textTheme;

    final child = Column(
      children: [
        const Row(),
        const Gap(80),
        Text(
          i18n.sponsors.title,
          style: textTheme.availableFonts.poppins.regular.copyWith(
            fontSize: 48,
          ),
        ),
        const Gap(80),
        SponsorView(sponsor: sponsor),
        const Gap(80),
      ],
    );

    return SafeArea(
      child: ContentsMargin.narrow(
        child: child,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty<SponsorWithSessionV3>('sponsor', sponsor));
  }
}

class _OnSponsorNotFoundPage extends StatelessWidget {
  const _OnSponsorNotFoundPage({
    required this.message,
  });

  final String message;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(i18n.sponsors.sponsorsError),
      ),
      body: Center(
        child: Column(
          children: [
            Text(message),
            const Gap(8),
            ElevatedButton(
              onPressed: () async => const HomeRoute().go(context),
              child: Text(i18n.sponsors.backToTop),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('message', message));
  }
}
