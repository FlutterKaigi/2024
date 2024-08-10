import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_app_features_about/src/ui/sponsors/model/sponsor.dart';

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
                  onTap: () {
                    // TODO:スポンサー詳細画面で対応予定
                    // https://github.com/FlutterKaigi/2024/issues/29
                  },
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
    late final List<Color> colors;
    switch (_sponsorRank) {
      case SponsorRank.platinum:
        colors = [
          const Color(0xff9ACDD6),
          const Color(0xff59ADBB),
        ];
      case SponsorRank.gold:
        colors = [
          const Color(0xffE6D089),
          const Color(0xffD4AF37),
        ];
      case SponsorRank.silver:
        colors = [
          const Color(0xffB2BCBD),
          const Color(0xff819193),
        ];
      case SponsorRank.bronze:
        colors = [
          const Color(0xffB58A69),
          const Color(0xff936949),
        ];
    }

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

enum SponsorRank {
  platinum,
  gold,
  silver,
  bronze,
}
