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

  @override
  String get pushNotification => 'Push Notification';

  @override
  String get pushNotificationPrompt =>
      'By allowing push notifications, you can receive notifications about FlutterKaigi.';

  @override
  String get pushNotificationAuthorized => 'Authorized';

  @override
  String get pushNotificationDenied => 'Denied';

  @override
  String get pushNotificationProvisional => 'Provisional';

  @override
  String get pushNotificationRestricted => 'Restricted';

  @override
  String get pushNotificationLimited => 'Limited';

  @override
  String get pushNotificationPermanentlyDenied => 'PermanentlyDenied';

  @override
  String get pushNotificationMessageAuthorized =>
      'OK! Push notification is enabled.';

  @override
  String get pushNotificationMessageAlreadyAuthorized =>
      'Push notification is already enabled.';

  @override
  String get pushNotificationMessageDenied =>
      'Sorry, do not send push notifications';

  @override
  String get pushNotificationMessageSettings =>
      'Permission is partially set. Please set it from the settings screen.';
}
