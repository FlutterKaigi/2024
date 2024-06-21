import 'dart:async';

import 'package:flutter/material.dart';
import 'package:packages_app_features_about/constants/cc_about.dart';
import 'package:packages_app_features_about/l10n.dart';
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
                      builder: (context) => const LicensePage(
                        applicationName: CcAbout.applicationName,
                      ),
                    ),
                  ),
                );
              },
              child: const Text(CcAbout.license),
            ),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () {
                unawaited(
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute<void>(
                      builder: (context) =>
                          const StaffPage(name: CcAbout.contributorsPageName),
                    ),
                  ),
                );
              },
              child: const Text(CcAbout.contributor),
            ),
          ),
          SliverToBoxAdapter(
            child: ElevatedButton(
              onPressed: () {
                unawaited(
                  Navigator.of(context, rootNavigator: true).push(
                    MaterialPageRoute<void>(
                      builder: (context) =>
                          const StaffPage(name: CcAbout.staffsPageName),
                    ),
                  ),
                );
              },
              child: const Text(CcAbout.staff),
            ),
          ),
        ],
      ),
    );
  }
}
