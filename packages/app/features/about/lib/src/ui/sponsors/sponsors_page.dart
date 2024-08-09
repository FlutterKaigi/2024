import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/sponsors/model/sponsor.dart';
import 'package:packages_app_features_about/src/ui/sponsors/sponsors_item.dart';
import 'package:packages_app_features_about/src/ui/staff/staff_card_widget.dart';

/// スポンサー一覧ページ
class SponsorsPage extends StatelessWidget {
  const SponsorsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    const padding = EdgeInsets.all(16);
    const spacing = 8.0;
    const childAspectRatio = 16 / 9;

    // TODO:モックで対応します
    const sponsors = Sponsors(
      platinum: <Sponsor>[
        Sponsor(
          sponsorName: 'A1会社',
          sponsorLinkUrl: 'LinkUrl',
          sponsorLogoUrl:
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*I6v0w7FK27AdQ5OeoOhqVA.png',
          sponsorDescription: 'Demo',
        ),
      ],
      gold: <Sponsor>[
        Sponsor(
          sponsorName: 'B1会社',
          sponsorLinkUrl: 'LinkUrl',
          sponsorLogoUrl:
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*vuzMHYEx8CK0h-WkEj09Mg.png',
          sponsorDescription: 'Demo',
        ),
        Sponsor(
          sponsorName: 'B2会社',
          sponsorLinkUrl: 'LinkUrl',
          sponsorLogoUrl:
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*vuzMHYEx8CK0h-WkEj09Mg.png',
          sponsorDescription: 'Demo',
        ),
      ],
      silver: <Sponsor>[
        Sponsor(
          sponsorName: 'C1会社',
          sponsorLinkUrl: 'LinkUrl',
          sponsorLogoUrl:
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*I6v0w7FK27AdQ5OeoOhqVA.png',
          sponsorDescription: 'Demo',
        ),
        Sponsor(
          sponsorName: 'C2会社',
          sponsorLinkUrl: 'LinkUrl',
          sponsorLogoUrl:
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*I6v0w7FK27AdQ5OeoOhqVA.png',
          sponsorDescription: 'Demo',
        ),
        Sponsor(
          sponsorName: 'C3会社',
          sponsorLinkUrl: 'LinkUrl',
          sponsorLogoUrl:
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*I6v0w7FK27AdQ5OeoOhqVA.png',
          sponsorDescription: 'Demo',
        ),
      ],
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(
              l.contributors,
            ),
          ),
          SliverPadding(
            padding: padding,
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) => SponsorItem(
                sponsor: sponsors.platinum[index],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                crossAxisCount: 1,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: sponsors.platinum.length,
            ),
          ),
          const SliverGap(16),
          SliverPadding(
            padding: padding,
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) => SponsorItem(
                sponsor: sponsors.gold[index],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                crossAxisCount: 2,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: sponsors.gold.length,
            ),
          ),
          const SliverGap(16),
          SliverPadding(
            padding: padding,
            sliver: SliverGrid.builder(
              itemBuilder: (context, index) => SponsorItem(
                sponsor: sponsors.silver[index],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: spacing,
                crossAxisSpacing: spacing,
                crossAxisCount: 3,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: sponsors.silver.length,
            ),
          ),
          const SliverGap(16),
        ],
      ),
    );
  }
}
