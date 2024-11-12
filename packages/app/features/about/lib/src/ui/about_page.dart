import 'dart:async';
import 'dart:io';

import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:app_cores_core/providers.dart';
import 'package:app_cores_core/util.dart';
import 'package:app_cores_designsystem/common_assets.dart';
import 'package:app_cores_designsystem/ui.dart';
import 'package:app_cores_settings/ui.dart';
import 'package:app_features_about/l10n.dart';
import 'package:app_features_about/src/ui/contributors/contributors_page.dart';
import 'package:app_features_about/src/ui/map/map_item_widget.dart';
import 'package:app_features_about/src/ui/sponsors/sponsors_page.dart';
import 'package:app_features_about/src/ui/staff/staff_page.dart';
import 'package:common_data/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class AboutPage extends ConsumerWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l = L10nAbout.of(context);
    final theme = Theme.of(context);
    final startDate = DateTime(2024, 11, 21, 10);
    final endDate = DateTime(2024, 11, 22, 18);

    final appVersion = ref.watch(
      packageInfoInstanceProvider.select(
        (p) => '${p.version}+${p.buildNumber} ( ${p.packageName} )',
      ),
    );

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
                      CommonAssets.logo.mainLogo.svg(
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
                  onTap: () async => Platform.isIOS
                      ? Add2Calendar.addEvent2Cal(
                          _createIosEvent(
                            l,
                            startDate: startDate,
                            endDate: endDate,
                          ),
                        )
                      : launchInExternalApp(
                          _createGoogleCalendarUrl(
                            l,
                            startDate: startDate,
                            endDate: endDate,
                          ),
                        ),
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
                          applicationVersion: appVersion,
                          applicationLegalese: '© 2024 FlutterKaigi',
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
                    InkWell(
                      onTap: () async {
                        await launchInExternalApp(
                          Uri.parse(OfficialSocialUrls.x),
                        );
                      },
                      customBorder: const CircleBorder(),
                      child: const XLogo(),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () async {
                        await launchInExternalApp(
                          Uri.parse(OfficialSocialUrls.medium),
                        );
                      },
                      customBorder: const CircleBorder(),
                      child: const MediumLogo(),
                    ),
                    const SizedBox(width: 8),
                    InkWell(
                      onTap: () async {
                        await launchInExternalApp(
                          Uri.parse(OfficialSocialUrls.github),
                        );
                      },
                      customBorder: const CircleBorder(),
                      child: const GithubLogo(),
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

  Event _createIosEvent(
    L10nAbout l, {
    required DateTime startDate,
    required DateTime endDate,
  }) =>
      Event(
        title: l.flutterKaigiTitle,
        description: l.flutterKaigiDescription,
        location: l.location,
        startDate: startDate,
        endDate: endDate,
        iosParams: const IOSParams(
          reminder: Duration(minutes: 10),
        ),
      );

  Uri _createGoogleCalendarUrl(
    L10nAbout l, {
    required DateTime startDate,
    required DateTime endDate,
  }) {
    final dateFormatter = DateFormat("yyyyMMdd'T'HHmmss'Z'");
    return Uri.https(
      'www.google.com',
      'calendar/render',
      {
        'action': 'TEMPLATE',
        'text': l.flutterKaigiTitle,
        'details': l.flutterKaigiDescription,
        'location': l.date,
        'dates':
            '${dateFormatter.format(startDate.toUtc())}/${dateFormatter.format(endDate.toUtc())}',
      },
    );
  }

  void _openMap(
    BuildContext context,
    L10nAbout l,
    ThemeData theme,
  ) {
    final googleMapUrl = Uri.parse(
      'https://www.google.com/maps/search/${l.conferenceRoomLocation}',
    );
    final appleMapUrl =
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
                  l.checkRoute,
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
                      itemTitle: l.openAppleMap,
                      onTap: () {
                        launchInExternalApp(appleMapUrl);
                      },
                    ),
                  ),
                MapItemWidget(
                  icon: Icons.call_made,
                  itemTitle: l.openGoogleMap,
                  onTap: () {
                    launchInExternalApp(googleMapUrl);
                  },
                ),
                const Gap(20),
                const Divider(
                  thickness: 0.5,
                ),
                const Gap(20),
                MapItemWidget(
                  icon: Icons.copy,
                  itemTitle: l.copyAddress,
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
