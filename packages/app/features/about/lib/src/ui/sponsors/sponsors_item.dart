import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:packages_app_features_about/src/ui/sponsors/model/sponsor.dart';

class SponsorItem extends StatelessWidget {
  const SponsorItem({
    required Sponsor sponsor,
    super.key,
  }) : _sponsor = sponsor;
  final Sponsor _sponsor;

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
  })  : _imageUrl = imageUrl,
        _semanticLabel = semanticLabel;

  final String _semanticLabel;
  final String _imageUrl;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Image.network(
          _imageUrl,
          errorBuilder: (context, error, stackTrace) => const Center(
            child: Icon(Icons.error_outline),
          ),
          semanticLabel: _semanticLabel,
        ),
      ),
    );
  }
}
