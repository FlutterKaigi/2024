import 'dart:async';

import 'package:flutter/material.dart';
import 'package:packages_app_features_about/l10n.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Text(l.aboutPageTitle),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () async {
                unawaited(
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute<void>(
                      builder: (context) => const LicensePage(
                        applicationName: 'FlutterKaigi 2024 Official App',
                      ),
                    ),
                  ),
                );
              },
              child: const Text('ライセンスページ'),
            ),
          ),
        ],
      ),
    );
  }
}
