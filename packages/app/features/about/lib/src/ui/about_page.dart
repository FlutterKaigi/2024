import 'dart:async';

import 'package:flutter/material.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/staff/contributors_page.dart';
import 'package:packages_app_features_about/src/ui/staff/staff_page.dart';

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
              onPressed: () {
                unawaited(
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute<void>(
                      builder: (context) => LicensePage(
                        applicationName: l.applicationName,
                      ),
                    ),
                  ),
                );
              },
              child: Text(l.license),
            ),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () {
                unawaited(
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute<void>(
                      builder: (context) =>
                          StaffPage(name: l.contributorsPageName),
                    ),
                  ),
                );
              },
              child: Text(l.contributor),
            ),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () {
                unawaited(
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute<void>(
                      builder: (context) =>
                          ContributorsPage(name: l.staffsPageName),
                    ),
                  ),
                );
              },
              child: Text(l.staff),
            ),
          ),
        ],
      ),
    );
  }
}
