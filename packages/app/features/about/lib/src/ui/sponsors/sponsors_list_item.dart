import 'dart:async';

import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/sponsors/extensions/sponsor_type_extension.dart';
import 'package:common_data/sponsor.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

/// スポンサー一覧のリストアイテム
class SponsorsListItem extends StatelessWidget {
  const SponsorsListItem({
    required Sponsor sponsor,
    super.key,
  }) : _sponsor = sponsor;
  final Sponsor _sponsor;

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    void onTap() {
      final colors = _getColors(_sponsor.type);
      unawaited(
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useRootNavigator: true,
          showDragHandle: true,
          constraints: const BoxConstraints(
            maxWidth: 720,
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
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: _SponsorImage(
                    imageUrl: _sponsor.logoUrl.toString(),
                    semanticLabel: _sponsor.name,
                  ),
                ),
                const Gap(8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        _sponsor.name,
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
                            _sponsor.type.nameUpperCase,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                      const Gap(8),
                      Text(
                        _sponsor.description,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      const Gap(8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                        ),
                        child: OutlinedButton(
                          onPressed: () async {
                            final uri = Uri.tryParse(_sponsor.url.toString());
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
                imageUrl: _sponsor.logoUrl.toString(),
                sponsorRank: _sponsor.type,
              ),
            ),
            Positioned.fill(
              child: Semantics(
                container: true,
                button: true,
                label: _sponsor.name,
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: onTap,
                  ),
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
    required String imageUrl,
    required SponsorType sponsorRank,
  })  : _imageUrl = imageUrl,
        _sponsorRank = sponsorRank;

  final String _imageUrl;
  final SponsorType _sponsorRank;

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
        child: _SponsorImage(
          imageUrl: _imageUrl,
          excludeFromSemantics: true,
        ),
      ),
    );
  }
}

List<Color> _getColors(SponsorType sponsorRank) {
  switch (sponsorRank) {
    case SponsorType.platinum:
      return [
        const Color(0xff9ACDD6),
        const Color(0xff59ADBB),
      ];
    case SponsorType.gold:
      return [
        const Color(0xffE6D089),
        const Color(0xffD4AF37),
      ];
    case SponsorType.silver:
      return [
        const Color(0xffB2BCBD),
        const Color(0xff819193),
      ];
    case SponsorType.bronze:
      return [
        const Color(0xffB58A69),
        const Color(0xff936949),
      ];
  }
}

class _SponsorImage extends StatelessWidget {
  const _SponsorImage({
    required String imageUrl,
    String? semanticLabel,
    bool excludeFromSemantics = false,
  })  : _imageUrl = imageUrl,
        _semanticLabel = semanticLabel,
        _excludeFromSemantics = excludeFromSemantics;

  final String _imageUrl;
  final String? _semanticLabel;
  final bool _excludeFromSemantics;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _imageUrl,
      package: 'common_data',
      frameBuilder: (context, child, _, __) => ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: child,
        ),
      ),
      errorBuilder: (context, error, stackTrace) => const Center(
        child: Icon(Icons.error_outline),
      ),
      semanticLabel: _semanticLabel,
      excludeFromSemantics: _excludeFromSemantics,
      fit: BoxFit.contain,
    );
  }
}
