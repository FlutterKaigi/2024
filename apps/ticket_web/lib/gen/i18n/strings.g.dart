/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 46 (23 per locale)

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.ja;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.ja) // set locale
/// - Locale locale = AppLocale.ja.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.ja) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	ja(languageCode: 'ja', build: Translations.build),
	en(languageCode: 'en', build: _StringsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
Translations get t => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	String get hello => 'こんにちは、世界';
	String get flutterKaigi => 'FlutterKaigi';
	String get year => '2024';
	String get ticketSite => 'チケットサイト';
	late final _StringsHomePageJa homePage = _StringsHomePageJa._(_root);
	late final _StringsFooterJa footer = _StringsFooterJa._(_root);
}

// Path: homePage
class _StringsHomePageJa {
	_StringsHomePageJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _StringsHomePageTitleAndLogoJa titleAndLogo = _StringsHomePageTitleAndLogoJa._(_root);
	late final _StringsHomePageTicketsJa tickets = _StringsHomePageTicketsJa._(_root);
}

// Path: footer
class _StringsFooterJa {
	_StringsFooterJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get copyRight => '@ FlutterKaigi 2024 実行委員会';
	late final _StringsFooterGoogleCopyrightJa googleCopyright = _StringsFooterGoogleCopyrightJa._(_root);
	String get codeOfConduct => '行動規範';
	String get privacyPolicy => 'プライバシーポリシー';
	String get contact => 'お問い合わせ';
	String get license => 'ライセンス';
}

// Path: homePage.titleAndLogo
class _StringsHomePageTitleAndLogoJa {
	_StringsHomePageTitleAndLogoJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => 'November\n21(Thu) - 22(Fri)';
	String get location => '有明セントラルタワーホール&カンファレンス';
}

// Path: homePage.tickets
class _StringsHomePageTicketsJa {
	_StringsHomePageTicketsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get buyTicket => 'チケットを購入';
	late final _StringsHomePageTicketsNormalJa normal = _StringsHomePageTicketsNormalJa._(_root);
	late final _StringsHomePageTicketsInvitationJa invitation = _StringsHomePageTicketsInvitationJa._(_root);
}

// Path: footer.googleCopyright
class _StringsFooterGoogleCopyrightJa {
	_StringsFooterGoogleCopyrightJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get text0 => 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
	String get text1 => 'The Flutter name and the Flutter logo';
	String get text2 => 'are trademarks of Google LLC.';
}

// Path: homePage.tickets.normal
class _StringsHomePageTicketsNormalJa {
	_StringsHomePageTicketsNormalJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '一般チケット';
	String price({required Object price}) => '¥${price}';
	String get description => '一般参加者向けチケット';
}

// Path: homePage.tickets.invitation
class _StringsHomePageTicketsInvitationJa {
	_StringsHomePageTicketsInvitationJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '招待チケット・クーポンコード';
	String get description => '招待コードまたはクーポンコードをお持ちの方はこちら';
	String get textBoxTitle => '招待コード もしくは クーポンコード';
	String get textBoxDescription => 'コードを入力';
	String get applyCodeButton => 'コードを適用';
}

// Path: <root>
class _StringsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super.build(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	@override late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	@override String get hello => 'Hello, World!';
	@override String get flutterKaigi => 'FlutterKaigi';
	@override String get year => '2024';
	@override String get ticketSite => 'Ticket Site';
	@override late final _StringsHomePageEn homePage = _StringsHomePageEn._(_root);
	@override late final _StringsFooterEn footer = _StringsFooterEn._(_root);
}

// Path: homePage
class _StringsHomePageEn extends _StringsHomePageJa {
	_StringsHomePageEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override late final _StringsHomePageTitleAndLogoEn titleAndLogo = _StringsHomePageTitleAndLogoEn._(_root);
	@override late final _StringsHomePageTicketsEn tickets = _StringsHomePageTicketsEn._(_root);
}

// Path: footer
class _StringsFooterEn extends _StringsFooterJa {
	_StringsFooterEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get copyRight => '@ FlutterKaigi 2024 Organizing Committee';
	@override late final _StringsFooterGoogleCopyrightEn googleCopyright = _StringsFooterGoogleCopyrightEn._(_root);
	@override String get codeOfConduct => 'Code of Conduct';
	@override String get privacyPolicy => 'Privacy Policy';
	@override String get contact => 'Contact';
	@override String get license => 'License';
}

// Path: homePage.titleAndLogo
class _StringsHomePageTitleAndLogoEn extends _StringsHomePageTitleAndLogoJa {
	_StringsHomePageTitleAndLogoEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get date => 'November\n21(Thu) - 22(Fri)';
	@override String get location => 'Ariake Central Tower & Conference';
}

// Path: homePage.tickets
class _StringsHomePageTicketsEn extends _StringsHomePageTicketsJa {
	_StringsHomePageTicketsEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get buyTicket => 'Buy Ticket';
	@override late final _StringsHomePageTicketsNormalEn normal = _StringsHomePageTicketsNormalEn._(_root);
	@override late final _StringsHomePageTicketsInvitationEn invitation = _StringsHomePageTicketsInvitationEn._(_root);
}

// Path: footer.googleCopyright
class _StringsFooterGoogleCopyrightEn extends _StringsFooterGoogleCopyrightJa {
	_StringsFooterGoogleCopyrightEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get text0 => 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
	@override String get text1 => 'The Flutter name and the Flutter logo';
	@override String get text2 => 'are trademarks of Google LLC.';
}

// Path: homePage.tickets.normal
class _StringsHomePageTicketsNormalEn extends _StringsHomePageTicketsNormalJa {
	_StringsHomePageTicketsNormalEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Normal Ticket';
	@override String price({required Object price}) => '¥${price}';
	@override String get description => 'General admission ticket';
}

// Path: homePage.tickets.invitation
class _StringsHomePageTicketsInvitationEn extends _StringsHomePageTicketsInvitationJa {
	_StringsHomePageTicketsInvitationEn._(_StringsEn root) : this._root = root, super._(root);

	@override final _StringsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Invitation Ticket';
	@override String get description => 'For those who have an invitation code or coupon code';
	@override String get textBoxTitle => 'Invitation Code or Coupon Code';
	@override String get textBoxDescription => 'Enter the code';
	@override String get applyCodeButton => 'Apply Code';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'こんにちは、世界';
			case 'flutterKaigi': return 'FlutterKaigi';
			case 'year': return '2024';
			case 'ticketSite': return 'チケットサイト';
			case 'homePage.titleAndLogo.date': return 'November\n21(Thu) - 22(Fri)';
			case 'homePage.titleAndLogo.location': return '有明セントラルタワーホール&カンファレンス';
			case 'homePage.tickets.buyTicket': return 'チケットを購入';
			case 'homePage.tickets.normal.name': return '一般チケット';
			case 'homePage.tickets.normal.price': return ({required Object price}) => '¥${price}';
			case 'homePage.tickets.normal.description': return '一般参加者向けチケット';
			case 'homePage.tickets.invitation.name': return '招待チケット・クーポンコード';
			case 'homePage.tickets.invitation.description': return '招待コードまたはクーポンコードをお持ちの方はこちら';
			case 'homePage.tickets.invitation.textBoxTitle': return '招待コード もしくは クーポンコード';
			case 'homePage.tickets.invitation.textBoxDescription': return 'コードを入力';
			case 'homePage.tickets.invitation.applyCodeButton': return 'コードを適用';
			case 'footer.copyRight': return '@ FlutterKaigi 2024 実行委員会';
			case 'footer.googleCopyright.text0': return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
			case 'footer.googleCopyright.text1': return 'The Flutter name and the Flutter logo';
			case 'footer.googleCopyright.text2': return 'are trademarks of Google LLC.';
			case 'footer.codeOfConduct': return '行動規範';
			case 'footer.privacyPolicy': return 'プライバシーポリシー';
			case 'footer.contact': return 'お問い合わせ';
			case 'footer.license': return 'ライセンス';
			default: return null;
		}
	}
}

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return 'Hello, World!';
			case 'flutterKaigi': return 'FlutterKaigi';
			case 'year': return '2024';
			case 'ticketSite': return 'Ticket Site';
			case 'homePage.titleAndLogo.date': return 'November\n21(Thu) - 22(Fri)';
			case 'homePage.titleAndLogo.location': return 'Ariake Central Tower & Conference';
			case 'homePage.tickets.buyTicket': return 'Buy Ticket';
			case 'homePage.tickets.normal.name': return 'Normal Ticket';
			case 'homePage.tickets.normal.price': return ({required Object price}) => '¥${price}';
			case 'homePage.tickets.normal.description': return 'General admission ticket';
			case 'homePage.tickets.invitation.name': return 'Invitation Ticket';
			case 'homePage.tickets.invitation.description': return 'For those who have an invitation code or coupon code';
			case 'homePage.tickets.invitation.textBoxTitle': return 'Invitation Code or Coupon Code';
			case 'homePage.tickets.invitation.textBoxDescription': return 'Enter the code';
			case 'homePage.tickets.invitation.applyCodeButton': return 'Apply Code';
			case 'footer.copyRight': return '@ FlutterKaigi 2024 Organizing Committee';
			case 'footer.googleCopyright.text0': return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
			case 'footer.googleCopyright.text1': return 'The Flutter name and the Flutter logo';
			case 'footer.googleCopyright.text2': return 'are trademarks of Google LLC.';
			case 'footer.codeOfConduct': return 'Code of Conduct';
			case 'footer.privacyPolicy': return 'Privacy Policy';
			case 'footer.contact': return 'Contact';
			case 'footer.license': return 'License';
			default: return null;
		}
	}
}
