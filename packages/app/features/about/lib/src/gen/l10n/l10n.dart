// ignore_for_file: type=lint
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

  /// No description provided for @license.
  ///
  /// In ja, this message translates to:
  /// **'ライセンスページ'**
  String get license;

  /// No description provided for @contributor.
  ///
  /// In ja, this message translates to:
  /// **'コントリビューター'**
  String get contributor;

  /// No description provided for @staff.
  ///
  /// In ja, this message translates to:
  /// **'スタッフ'**
  String get staff;

  /// No description provided for @applicationName.
  ///
  /// In ja, this message translates to:
  /// **'FlutterKaigi 2024 Official App'**
  String get applicationName;

  /// No description provided for @contributorsPageName.
  ///
  /// In ja, this message translates to:
  /// **'Contributors'**
  String get contributorsPageName;

  /// No description provided for @staffsPageName.
  ///
  /// In ja, this message translates to:
  /// **'Staffs'**
  String get staffsPageName;
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
