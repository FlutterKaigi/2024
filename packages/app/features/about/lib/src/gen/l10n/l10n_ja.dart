import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nAboutJa extends L10nAbout {
  L10nAboutJa([String locale = 'ja']) : super(locale);

  @override
  String get aboutPageTitle => 'About us';

  @override
  String get license => 'ライセンスページ';

  @override
  String get contributor => 'コントリビューター';

  @override
  String get staff => 'スタッフ';

  @override
  String get applicationName => 'FlutterKaigi 2024 Official App';

  @override
  String get contributorsPageName => 'Contributors';

  @override
  String get staffsPageName => 'Staffs';
}
