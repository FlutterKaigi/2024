import 'dart:async';

import 'package:app_cores_designsystem/common_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
            actions: [
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
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
                        const FlutterLogo(size: 100), // Placeholder for the logo
                        const SizedBox(height: 16),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: Text(
                            'FlutterKaigi is a conference for Flutter/Dart lovers from around the world. Our objective is to provide a space for sharing your knowledge and passion for Flutter/Dart. And we are running the committee as volunteers. Beginners and advanced users alike gather to learn, discuss, and enjoy Flutter/Dart. Although the event will be held in Japan, we are using Internet distribution to transmit the information to the entire world.',
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 24, bottom: 8),
                    child: Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        const SizedBox(width: 16),
                        Text('Ariake Central Tower Hall & Conference', style: theme.textTheme.bodyLarge),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8, right: 24, bottom: 8),
                    child: Row(
                      children: [
                        const Icon(Icons.event_outlined),
                        const SizedBox(width: 16),
                        Text('November 21 ~ 22, 2024', style: theme.textTheme.bodyLarge),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Text('Contributors', style: theme.textTheme.titleMedium),
                  ),
                ],
              ),
            ),
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                title: Text('Sponsors', style: theme.textTheme.bodyLarge),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                title: Text('Website/App contributors', style: theme.textTheme.bodyLarge),
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
                title: Text('Staffs', style: theme.textTheme.bodyLarge),
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
                child: Text('Others', style: theme.textTheme.titleMedium),
              ),
              ListTile(
                title: Text('Code of conduct', style: theme.textTheme.bodyLarge),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                title: Text('Privacy policy', style: theme.textTheme.bodyLarge),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contact us', style: theme.textTheme.bodyLarge),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {},
              ),
              ListTile(
                title: Text('OSS Licenses', style: theme.textTheme.bodyLarge),
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
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.email),
                    SizedBox(width: 16),
                    Icon(Icons.link),
                    SizedBox(width: 16),
                    Icon(Icons.code),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.',
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
