import 'dart:async';

import 'package:app_cores_core/util.dart';
import 'package:app_cores_designsystem/common_assets.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:packages_app_features_about/l10n.dart';
import 'package:packages_app_features_about/src/ui/sponsors/sponsors_page.dart';
import 'package:packages_app_features_about/src/ui/staff/contributors_page.dart';
import 'package:packages_app_features_about/src/ui/staff/staff_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final l = L10nAbout.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: Center(
              child: SvgPicture.asset(
                CommonAssets.logo.mainLogoMono,
                width: 24,
                height: 24,
              ),
            ),
            title: Text(l.aboutPageTitle),
            actions: const [
              SettingsButton(),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 16),
                      SvgPicture.asset(
                        CommonAssets.logo.mainLogo,
                        width: 96,
                        height: 96,
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text(
                          l.flutterKaigiDescription,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                ListTile(
                  title: Text(l.location, style: theme.textTheme.bodyLarge),
                  leading: const Icon(Icons.location_on_outlined),
                  onTap: () async {
                    final url =
                        Uri.parse('https://maps.app.goo.gl/W5k8XU7Jd5GZdaww7');
                    await launchInExternalApp(url);
                  },
                ),
                const SizedBox(height: 16),
                ListTile(
                  title: Text(l.date, style: theme.textTheme.bodyLarge),
                  leading: const Icon(Icons.event_outlined),
                  onTap: () {},
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    l.contributors,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: Text(l.sponsors),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  unawaited(
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const SponsorsPage(),
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(l.websiteAndAppContributors),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  unawaited(
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const ContributorsPage(),
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                title: Text(l.staffs),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  unawaited(
                    Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute<void>(
                        builder: (context) => const StaffPage(),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(l.other, style: theme.textTheme.titleMedium),
              ),
              ListTile(
                title: Text(l.codeOfConduct),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () async {
                  final url = Uri.parse(l.codeOfConductUrl);
                  await launchInExternalApp(url);
                },
              ),
              ListTile(
                title: Text(l.privacyPolicy),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () async {
                  final url = Uri.parse(l.privacyPolicyUrl);
                  await launchInExternalApp(url);
                },
              ),
              ListTile(
                title: Text(l.contactUs),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () async {
                  final url = Uri.parse(l.contactUsUrl);
                  await launchInExternalApp(url);
                },
              ),
              ListTile(
                title: Text(l.ossLicenses),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
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
              ),
              const SizedBox(height: 32),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      CommonAssets.logo.xLogo,
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                      CommonAssets.logo.mediumLogo,
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(width: 16),
                    SvgPicture.asset(
                      CommonAssets.logo.githubLogo,
                      width: 48,
                      height: 48,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  l.licensesAboutUs,
                  textAlign: TextAlign.start,
                  style: theme.textTheme.labelSmall,
                ),
              ),
              const SizedBox(height: 16),
            ]),
          ),
        ],
      ),
    );
  }
}
