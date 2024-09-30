import 'package:collection/collection.dart';
import 'package:common_data/sponsor.dart';
import 'package:conference_2024_website/core/router/router.dart';
import 'package:conference_2024_website/feature/sponsor/data/sponsor_notifier.dart';
import 'package:conference_2024_website/gen/i18n/strings.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

class SponsorPage extends StatelessWidget {
  const SponsorPage({
    required this.sponsor,
    super.key,
  });

  final SponsorWithSession sponsor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sponsor.name),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<SponsorWithSession>('sponsor', sponsor));
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
