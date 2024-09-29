/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 1
/// Strings: 44

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
<<<<<<< HEAD:apps/website/lib/gen/i18n/strings.g.dart
	String get newsError => 'お知らせの取得に失敗しました';
=======
	late final _StringsSponsorsJa sponsors = _StringsSponsorsJa._(_root);
	String get news_error => 'お知らせの取得に失敗しました';
>>>>>>> origin/main:apps/website/lib/i18n/strings.g.dart
	String get retry => '再試行';
	late final _StringsSpeakerJa speaker = _StringsSpeakerJa._(_root);
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
	String get message => '昨年に引き続き、FlutterKaigi 2024を開催いたします！\nオフライン会場またはオンライン視聴からお選びください。\n詳細はイベント公式Ｘ(旧Twitter)アカウントにて随時発表していますので、ぜひチェックしてください！';
	String get xAccount => '@FlutterKaigi';
	late final _StringsLeadDateJa date = _StringsLeadDateJa._(_root);
	late final _StringsLeadLocationJa location = _StringsLeadLocationJa._(_root);
}

// Path: header
class _StringsHeaderJa {
	_StringsHeaderJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get speakerWanted => 'Speaker Wanted';
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
	List<String> get messages => [
		'FlutterKaigi 2024を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。',
		'この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？',
		'FlutterKaigi 2024は皆さまのご協力により、成功へと導かれます。',
		'ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。',
		'お申し込みは 6/17 10:00 より開始します',
	];
	String get apply => '協賛資料はこちら';
}

// Path: sponsors
class _StringsSponsorsJa {
	_StringsSponsorsJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sponsors';
	late final _StringsSponsorsLevelsJa levels = _StringsSponsorsLevelsJa._(_root);
	String get sponsors_error => 'スポンサー一覧の取得に失敗しました';
}

// Path: speaker
class _StringsSpeakerJa {
	_StringsSpeakerJa._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Speaker Wanted';
	List<String> get messages => [
		'FlutterKaigi 2024でのセッションスピーカーを募集開始しました！',
		'FlutterKaigiは、技術者が自分の知識と経験を共有するためのカンファレンスです。新参者もベテランも、あなたの知識を共有する絶好の機会です。',
		'テーマはFlutterやDartに関連していれば何でもOKです。初心者向けのヒントから上級者向けのテクニック、チュートリアル、ライブラリの紹介、ベストプラクティス、挑戦した事例など、聞いて面白く、他の開発者に有益な内容を募集しています。',
		'FlutterKaigi 2024は、あなたのユニークな視点と経験、そしてFlutterやDartへの情熱を歓迎します。私たちと共にあなたの「素晴らしいセッション」を世界に伝えましょう。',
	];
	String get caution => 'ただし、自社製品の宣伝を目的としたトークや、FlutterやDartと無関係なトピックは避けてください。（Flutter開発支援ツールについては除きます。）';
	String get apply => 'スピーカーお申込はこちら';
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
	String get value => '有明セントラルタワー＆カンファレンス';
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
			case 'lead.message': return '昨年に引き続き、FlutterKaigi 2024を開催いたします！\nオフライン会場またはオンライン視聴からお選びください。\n詳細はイベント公式Ｘ(旧Twitter)アカウントにて随時発表していますので、ぜひチェックしてください！';
			case 'lead.xAccount': return '@FlutterKaigi';
			case 'lead.date.prefix': return '開催日時';
			case 'lead.date.value': return '2024年11月21日(木) - 22日(金)';
			case 'lead.location.prefix': return '会場';
			case 'lead.location.value': return '有明セントラルタワー＆カンファレンス';
			case 'header.speakerWanted': return 'Speaker Wanted';
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
			case 'sponsor.messages.0': return 'FlutterKaigi 2024を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。';
			case 'sponsor.messages.1': return 'この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？';
			case 'sponsor.messages.2': return 'FlutterKaigi 2024は皆さまのご協力により、成功へと導かれます。';
			case 'sponsor.messages.3': return 'ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。';
			case 'sponsor.messages.4': return 'お申し込みは 6/17 10:00 より開始します';
			case 'sponsor.apply': return '協賛資料はこちら';
<<<<<<< HEAD:apps/website/lib/gen/i18n/strings.g.dart
			case 'newsError': return 'お知らせの取得に失敗しました';
=======
			case 'sponsors.title': return 'Sponsors';
			case 'sponsors.levels.platinum': return 'Platinum';
			case 'sponsors.levels.gold': return 'Gold';
			case 'sponsors.levels.silver': return 'Silver';
			case 'sponsors.levels.bronze': return 'Bronze';
			case 'sponsors.sponsors_error': return 'スポンサー一覧の取得に失敗しました';
			case 'news_error': return 'お知らせの取得に失敗しました';
>>>>>>> origin/main:apps/website/lib/i18n/strings.g.dart
			case 'retry': return '再試行';
			case 'speaker.title': return 'Speaker Wanted';
			case 'speaker.messages.0': return 'FlutterKaigi 2024でのセッションスピーカーを募集開始しました！';
			case 'speaker.messages.1': return 'FlutterKaigiは、技術者が自分の知識と経験を共有するためのカンファレンスです。新参者もベテランも、あなたの知識を共有する絶好の機会です。';
			case 'speaker.messages.2': return 'テーマはFlutterやDartに関連していれば何でもOKです。初心者向けのヒントから上級者向けのテクニック、チュートリアル、ライブラリの紹介、ベストプラクティス、挑戦した事例など、聞いて面白く、他の開発者に有益な内容を募集しています。';
			case 'speaker.messages.3': return 'FlutterKaigi 2024は、あなたのユニークな視点と経験、そしてFlutterやDartへの情熱を歓迎します。私たちと共にあなたの「素晴らしいセッション」を世界に伝えましょう。';
			case 'speaker.caution': return 'ただし、自社製品の宣伝を目的としたトークや、FlutterやDartと無関係なトピックは避けてください。（Flutter開発支援ツールについては除きます。）';
			case 'speaker.apply': return 'スピーカーお申込はこちら';
			default: return null;
		}
	}
}
