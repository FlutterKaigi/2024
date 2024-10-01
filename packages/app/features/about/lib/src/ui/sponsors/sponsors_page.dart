import 'package:common_data/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/sponsors/notifier/sponsors_notifier.dart';
import 'package:packages_app_features_about/src/ui/sponsors/sponsors_item.dart';

/// スポンサー一覧ページ
class SponsorsPage extends HookConsumerWidget {
  const SponsorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nAbout.of(context);
    const padding = EdgeInsets.only(top: 16, left: 16, right: 16);
    const spacing = 8.0;
    const childAspectRatio = 16 / 9;

    final sponsorsFuture = ref.watch(sponsorsFutureProvider);

    return Scaffold(
      body: sponsorsFuture.when(
        data: (sponsorList) {
          final platinumSponsor = sponsorList
              .where((element) => element.type == SponsorType.platinum)
              .toList();

          final goldSponsor = sponsorList
              .where(
                (element) => element.type == SponsorType.gold,
              )
              .toList();

          final silverSponsor = sponsorList
              .where((element) => element.type == SponsorType.silver)
              .toList();

          final bronzeSponsor = sponsorList
              .where((element) => element.type == SponsorType.bronze)
              .toList();

          return CustomScrollView(
            slivers: [
              SliverAppBar.large(
                title: Text(
                  l.sponsors,
                ),
              ),
              if (platinumSponsor.isNotEmpty)
                SliverPadding(
                  padding: padding,
                  sliver: SliverGrid.builder(
                    itemBuilder: (context, index) => SponsorItem(
                      sponsor: platinumSponsor[index],
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: spacing,
                      crossAxisSpacing: spacing,
                      crossAxisCount: 1,
                      childAspectRatio: childAspectRatio,
                    ),
                    itemCount: platinumSponsor.length,
                  ),
                ),
              if (goldSponsor.isNotEmpty)
                SliverPadding(
                  padding: padding,
                  sliver: SliverGrid.builder(
                    itemBuilder: (context, index) => SponsorItem(
                      sponsor: goldSponsor[index],
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: spacing,
                      crossAxisSpacing: spacing,
                      crossAxisCount: 2,
                      childAspectRatio: childAspectRatio,
                    ),
                    itemCount: goldSponsor.length,
                  ),
                ),
              if (silverSponsor.isNotEmpty)
                SliverPadding(
                  padding: padding,
                  sliver: SliverGrid.builder(
                    itemBuilder: (context, index) => SponsorItem(
                      sponsor: silverSponsor[index],
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: spacing,
                      crossAxisSpacing: spacing,
                      crossAxisCount: 3,
                      childAspectRatio: childAspectRatio,
                    ),
                    itemCount: silverSponsor.length,
                  ),
                ),
              if (bronzeSponsor.isNotEmpty)
                SliverPadding(
                  padding: padding,
                  sliver: SliverGrid.builder(
                    itemBuilder: (context, index) => SponsorItem(
                      sponsor: bronzeSponsor[index],
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: spacing,
                      crossAxisSpacing: spacing,
                      crossAxisCount: 4,
                      childAspectRatio: childAspectRatio,
                    ),
                    itemCount: bronzeSponsor.length,
                  ),
                ),
              const SliverGap(16),
            ],
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
