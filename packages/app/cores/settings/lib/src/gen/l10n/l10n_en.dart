import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nSettingsEn extends L10nSettings {
  L10nSettingsEn([String locale = 'en']) : super(locale);

  @override
  String get cancel => 'Cancel';

  @override
  String get dark => 'Dark';

  @override
  String get fontFamily => 'Font Family';

  @override
  String get light => 'Light';

  @override
  String get ok => 'OK';

  @override
  String get settingsPageTitle => 'Settings';

  @override
  String get system => 'System';

  @override
  String get theme => 'Theme';

  @override
  String get resetPreferences => 'Reset settings';

  @override
  String get localizationMode => 'Language';

  @override
  String get localizationModeJa => '日本語';

  @override
  String get localizationModeEn => 'English';
}
