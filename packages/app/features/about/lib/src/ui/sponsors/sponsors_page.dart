import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/sponsors/notifier/sponsors_notifier.dart';
import 'package:app_features_about/src/ui/sponsors/sponsors_item.dart';
import 'package:common_data/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
                _sponsorWidget(
                  padding: padding,
                  spacing: spacing,
                  childAspectRatio: childAspectRatio,
                  sponsor: platinumSponsor,
                  crossAxisCount: 1,
                ),
              if (goldSponsor.isNotEmpty)
                _sponsorWidget(
                  padding: padding,
                  spacing: spacing,
                  childAspectRatio: childAspectRatio,
                  sponsor: goldSponsor,
                  crossAxisCount: 2,
                ),
              if (silverSponsor.isNotEmpty)
                _sponsorWidget(
                  padding: padding,
                  spacing: spacing,
                  childAspectRatio: childAspectRatio,
                  sponsor: silverSponsor,
                  crossAxisCount: 3,
                ),
              if (bronzeSponsor.isNotEmpty)
                _sponsorWidget(
                  padding: padding,
                  spacing: spacing,
                  childAspectRatio: childAspectRatio,
                  sponsor: bronzeSponsor,
                  crossAxisCount: 4,
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

  SliverPadding _sponsorWidget({
    required EdgeInsetsGeometry padding,
    required double spacing,
    required double childAspectRatio,
    required List<Sponsor> sponsor,
    required int crossAxisCount,
  }) {
    return SliverPadding(
      padding: padding,
      sliver: SliverGrid.builder(
        itemBuilder: (context, index) => SponsorItem(
          sponsor: sponsor[index],
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: spacing,
          crossAxisSpacing: spacing,
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
        ),
        itemCount: sponsor.length,
      ),
    );
  }
}
