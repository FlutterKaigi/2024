import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nSettingsJa extends L10nSettings {
  L10nSettingsJa([String locale = 'ja']) : super(locale);

  @override
  String get cancel => 'キャンセル';

  @override
  String get dark => 'ダーク';

  @override
  String get fontFamily => 'フォント';

  @override
  String get light => 'ライト';

  @override
  String get ok => 'OK';

  @override
  String get settingsPageTitle => '設定';

  @override
  String get system => 'システムに合わせる';

  @override
  String get theme => '外観';

  @override
  String get resetPreferences => '設定のリセット';

  @override
  String get localizationMode => '言語設定';

  @override
  String get localizationModeJa => '日本語';

  @override
  String get localizationModeEn => 'English';
}
