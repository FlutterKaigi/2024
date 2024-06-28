// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for English (`en`).
class L10nAboutEn extends L10nAbout {
  L10nAboutEn([String locale = 'en']) : super(locale);

  @override
  String get aboutPageTitle => 'About us';

  @override
  String get license => 'license page';

  @override
  String get contributor => 'contributor';

  @override
  String get staff => 'staff';

  @override
  String get applicationName => 'FlutterKaigi 2024 Official App';

  @override
  String get contributorsPageName => 'Contributors';

  @override
  String get staffsPageName => 'Staffs';
}
