import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/sponsors/model/sponsor.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:url_launcher/url_launcher.dart';

class SponsorItem extends StatelessWidget {
  const SponsorItem({
    required Sponsor sponsor,
    required SponsorRank sponsorRank,
    super.key,
  })  : _sponsor = sponsor,
        _sponsorRank = sponsorRank;
  final Sponsor _sponsor;
  final SponsorRank _sponsorRank;

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    void onTap() {
      final colors = _getColors(_sponsorRank);
      unawaited(
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useRootNavigator: true,
          constraints: const BoxConstraints(
            maxWidth: 310,
          ),
          builder: (context) => DraggableScrollableSheet(
            initialChildSize: 0.75,
            minChildSize: 0.6,
            maxChildSize: 0.75,
            expand: false,
            builder: (context, scrollController) => ListView(
              controller: scrollController,
              padding: EdgeInsets.only(
                bottom: MediaQuery.paddingOf(context).bottom,
              ),
              children: [
                const Gap(16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 139),
                  child: Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                const Gap(16),
                Image.network(
                  _sponsor.sponsorLogoUrl,
                  errorBuilder: (context, error, stackTrace) =>
                      const Icon(Icons.error_outline),
                  fit: BoxFit.fitWidth,
                ),
                const Gap(8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _sponsor.sponsorName,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      const Gap(8),
                      ShaderMask(
                        blendMode: BlendMode.srcIn,
                        shaderCallback: (bounds) => LinearGradient(
                          colors: colors,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ).createShader(bounds),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(width: 2),
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          child: Text(
                            _sponsorRank.nameUpperCase,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                      const Gap(8),
                      Text(
                        _sponsor.sponsorDescription,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const Gap(8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: OutlinedButton(
                          onPressed: () async {
                            final uri = Uri.tryParse(_sponsor.sponsorLinkUrl);
                            if (uri != null && await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            }
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(
                                Icons.arrow_outward,
                                size: 20,
                              ),
                              const Gap(4),
                              Text(l.seeMore),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }

    return Material(
      elevation: 1,
      color: Colors.transparent,
      borderRadius: const BorderRadius.all(
        Radius.circular(8),
      ),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: [
            Positioned.fill(
              child: _WhiteBackgroundImage(
                semanticLabel: _sponsor.sponsorName,
                imageUrl: _sponsor.sponsorLogoUrl,
                sponsorRank: _sponsorRank,
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: onTap,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _WhiteBackgroundImage extends StatelessWidget {
  const _WhiteBackgroundImage({
    required String semanticLabel,
    required String imageUrl,
    required SponsorRank sponsorRank,
  })  : _imageUrl = imageUrl,
        _semanticLabel = semanticLabel,
        _sponsorRank = sponsorRank;

  final String _semanticLabel;
  final String _imageUrl;
  final SponsorRank _sponsorRank;

  @override
  Widget build(BuildContext context) {
    final colors = _getColors(_sponsorRank);

    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: colors,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.network(
          _imageUrl,
          errorBuilder: (context, error, stackTrace) => const Center(
            child: Icon(Icons.error_outline),
          ),
          semanticLabel: _semanticLabel,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

List<Color> _getColors(SponsorRank sponsorRank) {
  switch (sponsorRank) {
    case SponsorRank.platinum:
      return [
        const Color(0xff9ACDD6),
        const Color(0xff59ADBB),
      ];
    case SponsorRank.gold:
      return [
        const Color(0xffE6D089),
        const Color(0xffD4AF37),
      ];
    case SponsorRank.silver:
      return [
        const Color(0xffB2BCBD),
        const Color(0xff819193),
      ];
    case SponsorRank.bronze:
      return [
        const Color(0xffB58A69),
        const Color(0xff936949),
      ];
  }
}

enum SponsorRank {
  platinum,
  gold,
  silver,
  bronze,
}
