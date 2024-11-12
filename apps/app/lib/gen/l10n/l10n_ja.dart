import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get mainPageNavigationBarLabelSessions => 'Sessions';

  @override
  String get mainPageNavigationBarLabelVenue => 'Venue';

  @override
  String get mainPageNavigationBarLabelNews => 'News';

  @override
  String get mainPageNavigationBarLabelAbout => 'About';

  @override
  String get forceUpdateDialogTitle => 'アプリのアップデートが必要です';

  @override
  String forceUpdateDialogContent(String version) {
    return '新しいバージョン（$version）が利用可能です。\nストアからアプリをアップデートしてください。';
  }

  @override
  String get forceUpdateDialogNavigateToStore => 'ストアに移動する';

  @override
  String get appStoreUrl =>
      'https://apps.apple.com/jp/app/flutterkaigi-2024/id6737717479';

  @override
  String get playStoreUrl =>
      'https://play.google.com/store/apps/details?id=jp.flutterkaigi.conf2024';
}
