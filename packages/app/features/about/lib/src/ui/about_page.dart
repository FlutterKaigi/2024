import 'dart:async';

import 'package:app_cores_core/util.dart';
import 'package:app_cores_designsystem/common_assets.dart';
import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/map/map_item_widget.dart';
import 'package:app_features_about/src/ui/sponsors/sponsors_page.dart';
import 'package:app_features_about/src/ui/staff/contributors_page.dart';
import 'package:app_features_about/src/ui/staff/staff_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/url_launcher.dart';

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
            leading: const Center(
              child: MainLogo(),
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
                      const MainLogo(size: 96),
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
                  onTap: () => _openMap(
                    context,
                    l,
                    theme,
                  ),
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
                    style: theme.textTheme.titleLarge,
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
                child: Text(l.other, style: theme.textTheme.titleLarge),
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
                    CommonAssets.logo.xLogo.svg(
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(width: 16),
                    CommonAssets.logo.mediumLogo.svg(
                      width: 48,
                      height: 48,
                    ),
                    const SizedBox(width: 16),
                    CommonAssets.logo.githubLogo.svg(
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

  void _openMap(
    BuildContext context,
    L10nAbout l,
    ThemeData theme,
  ) {
    final googleMapsUrl = Uri.parse(
      'https://www.google.com/maps/search/${l.conferenceRoomLocation}',
    );
    final appleMapsUrl =
        Uri.parse('https://maps.apple.com/?q=${l.conferenceRoomLocation}');

    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    unawaited(
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        useRootNavigator: true,
        builder: (context) => SizedBox(
          height: 300,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
            ),
            child: Column(
              children: [
                const Gap(14),
                Text(
                  l.checkTheRoute,
                  style: theme.textTheme.labelLarge,
                  textAlign: TextAlign.center,
                ),
                const Gap(24),
                if (isIOS)
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 40,
                    ),
                    child: MapItemWidget(
                      icon: Icons.call_made,
                      itemTitle: l.openAppleMaps,
                      onTap: () async {
                        // iOSの場合はApple Mapsを優先して開く
                        if (Theme.of(context).platform == TargetPlatform.iOS &&
                            await canLaunchUrl(appleMapsUrl)) {
                          await launchInExternalApp(appleMapsUrl);
                          return;
                        }

                        // どちらも開けない場合は、URLを開く
                        await launchUrl(
                          googleMapsUrl,
                        );
                      },
                    ),
                  ),
                MapItemWidget(
                  icon: Icons.call_made,
                  itemTitle: l.openGoogleMaps,
                  onTap: () async {
                    // それ以外の場合はGoogle Mapsを開く
                    if (await canLaunchUrl(googleMapsUrl)) {
                      await launchInExternalApp(googleMapsUrl);
                      return;
                    }

                    // どちらも開けない場合は、URLを開く
                    await launchUrl(
                      googleMapsUrl,
                    );
                  },
                ),
                const Gap(20),
                const Divider(
                  thickness: 0.5,
                ),
                const Gap(20),
                MapItemWidget(
                  icon: Icons.copy,
                  itemTitle: l.copyTheAddress,
                  onTap: () {
                    final clipboardText =
                        ClipboardData(text: l.conferenceRoomLocation);
                    Clipboard.setData(clipboardText);

                    final snackBar = SnackBar(
                      content: Text(l.theAddressHasBeenCopied),
                      behavior: SnackBarBehavior.floating,
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
