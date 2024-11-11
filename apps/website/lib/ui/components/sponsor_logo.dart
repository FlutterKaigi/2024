import 'package:common_data/sponsor.dart';
import 'package:flutter/material.dart';

class SponsorLogo extends StatelessWidget {
  const SponsorLogo({
    required this.sponsor,
    super.key,
    this.height = 36,
    this.onTap,
  });

  final SponsorV2 sponsor;
  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final errorLogo = DecoratedBox(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Icon(
          Icons.business,
          color: Colors.black54,
          size: height,
        ),
      ),
    );

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Image.network(
        sponsor.logoUrl.toString(),
        height: height,
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) => errorLogo,
      ),
    );
  }
}
