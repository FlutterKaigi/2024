import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nSettingsEn extends L10nSettings {
  L10nSettingsEn([String locale = 'en']) : super(locale);

  @override
  String get cancel => 'Cancel';

  @override
  String get fontFamily => 'Font Family';

  @override
  String get ok => 'OK';

  @override
  String get settingsPageTitle => 'Settings';
}
