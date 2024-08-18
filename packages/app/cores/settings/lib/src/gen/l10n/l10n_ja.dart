import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nSettingsJa extends L10nSettings {
  L10nSettingsJa([String locale = 'ja']) : super(locale);

  @override
  String get cancel => 'キャンセル';

  @override
  String get fontFamily => 'フォント';

  @override
  String get ok => 'OK';

  @override
  String get settingsPageTitle => '設定';
}
