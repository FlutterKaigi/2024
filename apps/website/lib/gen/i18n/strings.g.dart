/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 57

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
	ja(languageCode: 'ja', build: Translations.build);

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
	String get title => 'FlutterKaigi';
	late final _StringsComingSoonJa comingSoon = _StringsComingSoonJa._(_root);
	String get year => '2024';
	late final _StringsTitleAndLogoJa titleAndLogo = _StringsTitleAndLogoJa._(_root);
	late final _StringsLeadJa lead = _StringsLeadJa._(_root);
	late final _StringsHeaderJa header = _StringsHeaderJa._(_root);
	late final _StringsFooterJa footer = _StringsFooterJa._(_root);
	late final _StringsSponsorJa sponsor = _StringsSponsorJa._(_root);
	late final _StringsTicketJa ticket = _StringsTicketJa._(_root);
	late final _StringsSponsorsJa sponsors = _StringsSponsorsJa._(_root);
	late final _StringsStaffJa staff = _StringsStaffJa._(_root);
	late final _StringsJobBoardJa jobBoard = _StringsJobBoardJa._(_root);
	late final _StringsSessionJa session = _StringsSessionJa._(_root);
	String get newsError => 'お知らせの取得に失敗しました';
	String get retry => '再試行';
}

// Path: comingSoon
class _StringsComingSoonJa {
	_StringsComingSoonJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'Other Contents\nComing Soon...';
}

// Path: titleAndLogo
class _StringsTitleAndLogoJa {
	_StringsTitleAndLogoJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get date => 'November\n21(Thu) - 22(Fri)';
	String get location => '有明セントラルタワーホール&カンファレンス';
}

// Path: lead
class _StringsLeadJa {
	_StringsLeadJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => '皆様のご協力により、FlutterKaigi 2024を無事開催することができました。\nありがとうございました。\n\n今後のイベントのお知らせは、イベント公式X(旧Twitter)アカウントにて随時発表していますので、ぜひチェックしてください!';
	String get xAccount => '@FlutterKaigi';
	late final _StringsLeadDateJa date = _StringsLeadDateJa._(_root);
	late final _StringsLeadLocationJa location = _StringsLeadLocationJa._(_root);
}

// Path: header
class _StringsHeaderJa {
	_StringsHeaderJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sponsors => 'Sponsors';
	String get staff => 'Staff';
}

// Path: footer
class _StringsFooterJa {
	_StringsFooterJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get copyRight => '@ FlutterKaigi 2024 実行委員会';
	String get googleFlutter1 => 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
	String get googleFlutter2 => 'The Flutter name and the Flutter logo';
	String get googleFlutter3 => 'are trademarks of Google LLC.';
	String get codeOfConduct => 'Code of Conduct';
	String get privacyPolicy => 'Privacy Policy';
	String get contact => 'Contact';
	String get license => 'License';
}

// Path: sponsor
class _StringsSponsorJa {
	_StringsSponsorJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sponsor';
	late final _StringsSponsorIndividualJa individual = _StringsSponsorIndividualJa._(_root);
	List<String> get messages => [
		'FlutterKaigi 2024を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。',
		'この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？',
		'FlutterKaigi 2024は皆さまのご協力により、成功へと導かれます。',
		'ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。',
		'お申し込みは 6/17 10:00 より開始します',
	];
	String get apply => '協賛資料はこちら';
}

// Path: ticket
class _StringsTicketJa {
	_StringsTicketJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Join FlutterKaigi 2024!';
	List<String> get messages => [
		'FlutterKaigi 2024のチケット販売が開始しました!',
		'一般チケットは6,000円、個人スポンサー付きチケットは30,000円(一般チケット+スポンサー料)です。',
		'また、一般チケットを対象に学割を実施致します。FlutterKaigi当日に学生の方は無料で参加いただけます。',
		'詳細は、以下のリンクよりご確認ください。',
	];
	String get link => 'チケット情報はこちら';
}

// Path: sponsors
class _StringsSponsorsJa {
	_StringsSponsorsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sponsors';
	late final _StringsSponsorsLevelsJa levels = _StringsSponsorsLevelsJa._(_root);
	String get sponsorsError => 'スポンサー一覧の取得に失敗しました';
	String get sponsorNotFound => 'スポンサーが見つかりませんでした';
	String get backToTop => 'トップに戻る';
}

// Path: staff
class _StringsStaffJa {
	_StringsStaffJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Staff';
}

// Path: jobBoard
class _StringsJobBoardJa {
	_StringsJobBoardJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Job Board';
	List<String> get messages => [
		'FlutterKaigi 2024では、初の試みとして',
		'企業の募集要項を掲載しています。',
		'ご興味のある方は、ぜひご確認ください。',
	];
	String get button => 'ジョブボードを見る';
}

// Path: session
class _StringsSessionJa {
	_StringsSessionJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Session';
	List<String> get messages => [
		'FlutterKaigi 2024のセッション一覧です。',
		'セッションの詳細は、以下のリンクよりご確認ください。',
	];
	String get link => 'セッション一覧はこちら';
}

// Path: lead.date
class _StringsLeadDateJa {
	_StringsLeadDateJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get prefix => '開催日時';
	String get value => '2024年11月21日(木) - 22日(金)';
}

// Path: lead.location
class _StringsLeadLocationJa {
	_StringsLeadLocationJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get prefix => '会場';
	String get value => '有明セントラルタワーホール＆カンファレンス';
}

// Path: sponsor.individual
class _StringsSponsorIndividualJa {
	_StringsSponsorIndividualJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Individual Sponsors';
}

// Path: sponsors.levels
class _StringsSponsorsLevelsJa {
	_StringsSponsorsLevelsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get platinum => 'Platinum';
	String get gold => 'Gold';
	String get silver => 'Silver';
	String get bronze => 'Bronze';
	String get community => 'Community';
	String get translation => 'Translation';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'title': return 'FlutterKaigi';
			case 'comingSoon.message': return 'Other Contents\nComing Soon...';
			case 'year': return '2024';
			case 'titleAndLogo.date': return 'November\n21(Thu) - 22(Fri)';
			case 'titleAndLogo.location': return '有明セントラルタワーホール&カンファレンス';
			case 'lead.message': return '皆様のご協力により、FlutterKaigi 2024を無事開催することができました。\nありがとうございました。\n\n今後のイベントのお知らせは、イベント公式X(旧Twitter)アカウントにて随時発表していますので、ぜひチェックしてください!';
			case 'lead.xAccount': return '@FlutterKaigi';
			case 'lead.date.prefix': return '開催日時';
			case 'lead.date.value': return '2024年11月21日(木) - 22日(金)';
			case 'lead.location.prefix': return '会場';
			case 'lead.location.value': return '有明セントラルタワーホール＆カンファレンス';
			case 'header.sponsors': return 'Sponsors';
			case 'header.staff': return 'Staff';
			case 'footer.copyRight': return '@ FlutterKaigi 2024 実行委員会';
			case 'footer.googleFlutter1': return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
			case 'footer.googleFlutter2': return 'The Flutter name and the Flutter logo';
			case 'footer.googleFlutter3': return 'are trademarks of Google LLC.';
			case 'footer.codeOfConduct': return 'Code of Conduct';
			case 'footer.privacyPolicy': return 'Privacy Policy';
			case 'footer.contact': return 'Contact';
			case 'footer.license': return 'License';
			case 'sponsor.title': return 'Sponsor';
			case 'sponsor.individual.title': return 'Individual Sponsors';
			case 'sponsor.messages.0': return 'FlutterKaigi 2024を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。';
			case 'sponsor.messages.1': return 'この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？';
			case 'sponsor.messages.2': return 'FlutterKaigi 2024は皆さまのご協力により、成功へと導かれます。';
			case 'sponsor.messages.3': return 'ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。';
			case 'sponsor.messages.4': return 'お申し込みは 6/17 10:00 より開始します';
			case 'sponsor.apply': return '協賛資料はこちら';
			case 'ticket.title': return 'Join FlutterKaigi 2024!';
			case 'ticket.messages.0': return 'FlutterKaigi 2024のチケット販売が開始しました!';
			case 'ticket.messages.1': return '一般チケットは6,000円、個人スポンサー付きチケットは30,000円(一般チケット+スポンサー料)です。';
			case 'ticket.messages.2': return 'また、一般チケットを対象に学割を実施致します。FlutterKaigi当日に学生の方は無料で参加いただけます。';
			case 'ticket.messages.3': return '詳細は、以下のリンクよりご確認ください。';
			case 'ticket.link': return 'チケット情報はこちら';
			case 'sponsors.title': return 'Sponsors';
			case 'sponsors.levels.platinum': return 'Platinum';
			case 'sponsors.levels.gold': return 'Gold';
			case 'sponsors.levels.silver': return 'Silver';
			case 'sponsors.levels.bronze': return 'Bronze';
			case 'sponsors.levels.community': return 'Community';
			case 'sponsors.levels.translation': return 'Translation';
			case 'sponsors.sponsorsError': return 'スポンサー一覧の取得に失敗しました';
			case 'sponsors.sponsorNotFound': return 'スポンサーが見つかりませんでした';
			case 'sponsors.backToTop': return 'トップに戻る';
			case 'staff.title': return 'Staff';
			case 'jobBoard.title': return 'Job Board';
			case 'jobBoard.messages.0': return 'FlutterKaigi 2024では、初の試みとして';
			case 'jobBoard.messages.1': return '企業の募集要項を掲載しています。';
			case 'jobBoard.messages.2': return 'ご興味のある方は、ぜひご確認ください。';
			case 'jobBoard.button': return 'ジョブボードを見る';
			case 'session.title': return 'Session';
			case 'session.messages.0': return 'FlutterKaigi 2024のセッション一覧です。';
			case 'session.messages.1': return 'セッションの詳細は、以下のリンクよりご確認ください。';
			case 'session.link': return 'セッション一覧はこちら';
			case 'newsError': return 'お知らせの取得に失敗しました';
			case 'retry': return '再試行';
			default: return null;
		}
	}
}
