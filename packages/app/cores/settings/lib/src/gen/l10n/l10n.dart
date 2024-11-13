import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10nSettings
/// returned by `L10nSettings.of(context)`.
///
/// Applications need to include `L10nSettings.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10nSettings.localizationsDelegates,
///   supportedLocales: L10nSettings.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10nSettings.supportedLocales
/// property.
abstract class L10nSettings {
  L10nSettings(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10nSettings of(BuildContext context) {
    return Localizations.of<L10nSettings>(context, L10nSettings)!;
  }

  static const LocalizationsDelegate<L10nSettings> delegate =
      _L10nSettingsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ja'),
    Locale('en')
  ];

  /// No description provided for @cancel.
  ///
  /// In ja, this message translates to:
  /// **'キャンセル'**
  String get cancel;

  /// No description provided for @dark.
  ///
  /// In ja, this message translates to:
  /// **'ダーク'**
  String get dark;

  /// No description provided for @fontFamily.
  ///
  /// In ja, this message translates to:
  /// **'フォント設定'**
  String get fontFamily;

  /// No description provided for @light.
  ///
  /// In ja, this message translates to:
  /// **'ライト'**
  String get light;

  /// No description provided for @ok.
  ///
  /// In ja, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @settingsPageTitle.
  ///
  /// In ja, this message translates to:
  /// **'設定'**
  String get settingsPageTitle;

  /// No description provided for @system.
  ///
  /// In ja, this message translates to:
  /// **'システムに合わせる'**
  String get system;

  /// No description provided for @theme.
  ///
  /// In ja, this message translates to:
  /// **'外観設定'**
  String get theme;

  /// No description provided for @resetPreferences.
  ///
  /// In ja, this message translates to:
  /// **'設定のリセット'**
  String get resetPreferences;

  /// No description provided for @localizationMode.
  ///
  /// In ja, this message translates to:
  /// **'言語設定'**
  String get localizationMode;

  /// No description provided for @localizationModeJa.
  ///
  /// In ja, this message translates to:
  /// **'日本語'**
  String get localizationModeJa;

  /// No description provided for @localizationModeEn.
  ///
  /// In ja, this message translates to:
  /// **'English'**
  String get localizationModeEn;

  /// No description provided for @pushNotification.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知設定'**
  String get pushNotification;

  /// No description provided for @pushNotificationPrompt.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知を許可することで、FlutterKaigiに関するお知らせを受け取れます'**
  String get pushNotificationPrompt;

  /// No description provided for @pushNotificationAuthorized.
  ///
  /// In ja, this message translates to:
  /// **'許可'**
  String get pushNotificationAuthorized;

  /// No description provided for @pushNotificationDenied.
  ///
  /// In ja, this message translates to:
  /// **'不許可'**
  String get pushNotificationDenied;

  /// No description provided for @pushNotificationProvisional.
  ///
  /// In ja, this message translates to:
  /// **'仮設定'**
  String get pushNotificationProvisional;

  /// No description provided for @pushNotificationRestricted.
  ///
  /// In ja, this message translates to:
  /// **'制限中'**
  String get pushNotificationRestricted;

  /// No description provided for @pushNotificationLimited.
  ///
  /// In ja, this message translates to:
  /// **'制限中'**
  String get pushNotificationLimited;

  /// No description provided for @pushNotificationPermanentlyDenied.
  ///
  /// In ja, this message translates to:
  /// **'永久に拒否'**
  String get pushNotificationPermanentlyDenied;

  /// No description provided for @pushNotificationMessageAuthorized.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知がの受信が許可されました！'**
  String get pushNotificationMessageAuthorized;

  /// No description provided for @pushNotificationMessageAlreadyAuthorized.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知は既に許可されています。'**
  String get pushNotificationMessageAlreadyAuthorized;

  /// No description provided for @pushNotificationMessageDenied.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知が拒否されました。'**
  String get pushNotificationMessageDenied;

  /// No description provided for @pushNotificationMessageSettings.
  ///
  /// In ja, this message translates to:
  /// **'プッシュ通知は一部許可されています'**
  String get pushNotificationMessageSettings;
}

class _L10nSettingsDelegate extends LocalizationsDelegate<L10nSettings> {
  const _L10nSettingsDelegate();

  @override
  Future<L10nSettings> load(Locale locale) {
    return SynchronousFuture<L10nSettings>(lookupL10nSettings(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nSettingsDelegate old) => false;
}

L10nSettings lookupL10nSettings(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return L10nSettingsEn();
    case 'ja':
      return L10nSettingsJa();
  }

  throw FlutterError(
      'L10nSettings.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
