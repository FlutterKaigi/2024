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
  String get fontFamily => 'フォント設定';

  @override
  String get light => 'ライト';

  @override
  String get ok => 'OK';

  @override
  String get settingsPageTitle => '設定';

  @override
  String get system => 'システムに合わせる';

  @override
  String get theme => '外観設定';

  @override
  String get resetPreferences => '設定のリセット';

  @override
  String get localizationMode => '言語設定';

  @override
  String get localizationModeJa => '日本語';

  @override
  String get localizationModeEn => 'English';

  @override
  String get pushNotification => 'プッシュ通知設定';

  @override
  String get pushNotificationPrompt =>
      'プッシュ通知を許可することで、FlutterKaigiに関するお知らせを受け取れます';

  @override
  String get pushNotificationAuthorized => '許可';

  @override
  String get pushNotificationDenied => '不許可';

  @override
  String get pushNotificationProvisional => '仮設定';

  @override
  String get pushNotificationRestricted => '制限中';

  @override
  String get pushNotificationLimited => '制限中';

  @override
  String get pushNotificationPermanentlyDenied => '永久に拒否';

  @override
  String get pushNotificationMessageAuthorized => 'プッシュ通知がの受信が許可されました！';

  @override
  String get pushNotificationMessageAlreadyAuthorized => 'プッシュ通知は既に許可されています。';

  @override
  String get pushNotificationMessageDenied => 'プッシュ通知が拒否されました。';

  @override
  String get pushNotificationMessageNotDetermined => 'プッシュ通知の設定は未設定です。';

  @override
  String get pushNotificationMessageSettings => 'プッシュ通知は一部許可されています';
}
