import 'package:flutter/material.dart';
import 'package:packages_app_features_about/l10n.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    return Center(
      child: Text(l.aboutPageTitle),
    );
  }
}
