import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get mainPageNavigationBarLabelSessions => 'Sessions';

  @override
  String get mainPageNavigationBarLabelVenue => 'Venue';

  @override
  String get mainPageNavigationBarLabelNews => 'News';

  @override
  String get mainPageNavigationBarLabelAbout => 'About';

  @override
  String get forceUpdateDialogTitle => 'App update required';

  @override
  String forceUpdateDialogContent(String version) {
    return 'A new version ($version) is available.\nPlease update the app from the store.';
  }

  @override
  String get forceUpdateDialogNavigateToStore => 'Go to store';

  @override
  String get appStoreUrl =>
      'https://apps.apple.com/us/app/flutterkaigi-2024/id6737717479';

  @override
  String get playStoreUrl =>
      'https://play.google.com/store/apps/details?id=jp.flutterkaigi.conf2024';
}
