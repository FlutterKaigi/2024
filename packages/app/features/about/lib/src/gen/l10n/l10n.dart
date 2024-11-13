import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'l10n_en.dart';
import 'l10n_ja.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of L10nAbout
/// returned by `L10nAbout.of(context)`.
///
/// Applications need to include `L10nAbout.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/l10n.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10nAbout.localizationsDelegates,
///   supportedLocales: L10nAbout.supportedLocales,
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
/// be consistent with the languages listed in the L10nAbout.supportedLocales
/// property.
abstract class L10nAbout {
  L10nAbout(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10nAbout of(BuildContext context) {
    return Localizations.of<L10nAbout>(context, L10nAbout)!;
  }

  static const LocalizationsDelegate<L10nAbout> delegate = _L10nAboutDelegate();

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

  /// No description provided for @aboutPageTitle.
  ///
  /// In ja, this message translates to:
  /// **'About us'**
  String get aboutPageTitle;

  /// No description provided for @flutterKaigiTitle.
  ///
  /// In ja, this message translates to:
  /// **'FlutterKaigi 2024'**
  String get flutterKaigiTitle;

  /// No description provided for @flutterKaigiDescription.
  ///
  /// In ja, this message translates to:
  /// **'FlutterKaigi は世界中の Flutter/Dart を愛する人々が集まる場所です。知識や情熱を共有する場を提供することを目的に、Flutter/Dart に魅せられた有志によって実行委員会が組織されています。初心者から上級者までが集まり、Flutter/Dart について学び、語り合い、楽しむことができます。イベントの開催は日本になりますが、インターネット配信を活用し、全世界に発信しています。'**
  String get flutterKaigiDescription;

  /// No description provided for @location.
  ///
  /// In ja, this message translates to:
  /// **'有明セントラルタワーホール&カンファレンス'**
  String get location;

  /// No description provided for @date.
  ///
  /// In ja, this message translates to:
  /// **'2024年11月21日～22日'**
  String get date;

  /// No description provided for @contributors.
  ///
  /// In ja, this message translates to:
  /// **'Contributors'**
  String get contributors;

  /// No description provided for @sponsors.
  ///
  /// In ja, this message translates to:
  /// **'スポンサー'**
  String get sponsors;

  /// No description provided for @seeMore.
  ///
  /// In ja, this message translates to:
  /// **'もっと見る'**
  String get seeMore;

  /// No description provided for @websiteAndAppContributors.
  ///
  /// In ja, this message translates to:
  /// **'Website/App contributors'**
  String get websiteAndAppContributors;

  /// No description provided for @staffs.
  ///
  /// In ja, this message translates to:
  /// **'スタッフ'**
  String get staffs;

  /// No description provided for @other.
  ///
  /// In ja, this message translates to:
  /// **'Others'**
  String get other;

  /// No description provided for @codeOfConduct.
  ///
  /// In ja, this message translates to:
  /// **'行動規範'**
  String get codeOfConduct;

  /// No description provided for @codeOfConductUrl.
  ///
  /// In ja, this message translates to:
  /// **'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html'**
  String get codeOfConductUrl;

  /// No description provided for @privacyPolicy.
  ///
  /// In ja, this message translates to:
  /// **'プライバシーポリシー'**
  String get privacyPolicy;

  /// No description provided for @privacyPolicyUrl.
  ///
  /// In ja, this message translates to:
  /// **'https://flutterkaigi.jp/flutterkaigi/Privacy-Policy.ja.html'**
  String get privacyPolicyUrl;

  /// No description provided for @contactUs.
  ///
  /// In ja, this message translates to:
  /// **'お問い合わせ'**
  String get contactUs;

  /// No description provided for @contactUsUrl.
  ///
  /// In ja, this message translates to:
  /// **'https://docs.google.com/forms/d/e/1FAIpQLSemYPFEWpP8594MWI4k3Nz45RJzMS7pz1ufwtnX4t3V7z2TOw/viewform'**
  String get contactUsUrl;

  /// No description provided for @ossLicenses.
  ///
  /// In ja, this message translates to:
  /// **'OSS Licenses'**
  String get ossLicenses;

  /// No description provided for @licensesAboutUs.
  ///
  /// In ja, this message translates to:
  /// **'Flutterおよび関連ロゴはGoogle LLCの商標です。FlutterKaigiはGoogle LLCとは提携しておらず、または他の形でスポンサーを受けていません。'**
  String get licensesAboutUs;

  /// No description provided for @applicationName.
  ///
  /// In ja, this message translates to:
  /// **'FlutterKaigi 2024 Official App'**
  String get applicationName;

  /// No description provided for @conferenceRoomLocation.
  ///
  /// In ja, this message translates to:
  /// **'〒135-0063 東京都江東区有明３丁目７−１８ 4F 有明セントラルタワー'**
  String get conferenceRoomLocation;

  /// No description provided for @checkRoute.
  ///
  /// In ja, this message translates to:
  /// **'経路を確認する'**
  String get checkRoute;

  /// No description provided for @openAppleMap.
  ///
  /// In ja, this message translates to:
  /// **'Appleマップを開く'**
  String get openAppleMap;

  /// No description provided for @openGoogleMap.
  ///
  /// In ja, this message translates to:
  /// **'Googleマップを開く'**
  String get openGoogleMap;

  /// No description provided for @copyAddress.
  ///
  /// In ja, this message translates to:
  /// **'住所をコピー'**
  String get copyAddress;

  /// No description provided for @theAddressHasBeenCopied.
  ///
  /// In ja, this message translates to:
  /// **'住所をコピーしました '**
  String get theAddressHasBeenCopied;

  /// No description provided for @contributionsCount.
  ///
  /// In ja, this message translates to:
  /// **'{count} contributions'**
  String contributionsCount(Object count);

  /// No description provided for @semanticsMainLogoLabel.
  ///
  /// In ja, this message translates to:
  /// **'Flutter Kaigiロゴ'**
  String get semanticsMainLogoLabel;
}

class _L10nAboutDelegate extends LocalizationsDelegate<L10nAbout> {
  const _L10nAboutDelegate();

  @override
  Future<L10nAbout> load(Locale locale) {
    return SynchronousFuture<L10nAbout>(lookupL10nAbout(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'ja'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nAboutDelegate old) => false;
}

L10nAbout lookupL10nAbout(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return L10nAboutEn();
    case 'ja':
      return L10nAboutJa();
  }

  throw FlutterError(
      'L10nAbout.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
