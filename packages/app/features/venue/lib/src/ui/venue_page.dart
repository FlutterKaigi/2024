import 'package:flutter/material.dart';
import 'package:packages_app_features_venue/l10n.dart';

class VenuePage extends StatelessWidget {
  const VenuePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nVenue.of(context);
    return Center(
      child: Text(l.venuePageTitle),
    );
  }
}
