/// Generated file. Do not edit.
///
/// Original: lib/core/i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 275 (137 per locale)

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

  const AppLocale(
      {required this.languageCode,
      this.scriptCode,
      this.countryCode,
      required this.build}); // ignore: unused_element

  @override
  final String languageCode;
  @override
  final String? scriptCode;
  @override
  final String? countryCode;
  @override
  final TranslationBuilder<AppLocale, Translations> build;

  /// Gets current instance managed by [LocaleSettings].
  Translations get translations =>
      LocaleSettings.instance.translationMap[this]!;
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
class TranslationProvider
    extends BaseTranslationProvider<AppLocale, Translations> {
  TranslationProvider({required super.child})
      : super(settings: LocaleSettings.instance);

  static InheritedLocaleData<AppLocale, Translations> of(
          BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context);
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
class LocaleSettings
    extends BaseFlutterLocaleSettings<AppLocale, Translations> {
  LocaleSettings._() : super(utils: AppLocaleUtils.instance);

  static final instance = LocaleSettings._();

  // static aliases (checkout base methods for documentation)
  static AppLocale get currentLocale => instance.currentLocale;
  static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
  static AppLocale setLocale(AppLocale locale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale setLocaleRaw(String rawLocale,
          {bool? listenToDeviceLocale = false}) =>
      instance.setLocaleRaw(rawLocale,
          listenToDeviceLocale: listenToDeviceLocale);
  static AppLocale useDeviceLocale() => instance.useDeviceLocale();
  @Deprecated('Use [AppLocaleUtils.supportedLocales]')
  static List<Locale> get supportedLocales => instance.supportedLocales;
  @Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]')
  static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
  static void setPluralResolver(
          {String? language,
          AppLocale? locale,
          PluralResolver? cardinalResolver,
          PluralResolver? ordinalResolver}) =>
      instance.setPluralResolver(
        language: language,
        locale: locale,
        cardinalResolver: cardinalResolver,
        ordinalResolver: ordinalResolver,
      );
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
  AppLocaleUtils._()
      : super(baseLocale: _baseLocale, locales: AppLocale.values);

  static final instance = AppLocaleUtils._();

  // static aliases (checkout base methods for documentation)
  static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
  static AppLocale parseLocaleParts(
          {required String languageCode,
          String? scriptCode,
          String? countryCode}) =>
      instance.parseLocaleParts(
          languageCode: languageCode,
          scriptCode: scriptCode,
          countryCode: countryCode);
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
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.ja,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ja>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final Translations _root = this; // ignore: unused_field

  // Translations
  String get flutterKaigi => 'FlutterKaigi';
  String get year => '2024';
  String get officialSite => '公式サイト';
  String get ticketSite => 'チケットサイト';
  late final _StringsHomePageJa homePage = _StringsHomePageJa._(_root);
  late final _StringsVerifyPurchaseJa verifyPurchase =
      _StringsVerifyPurchaseJa._(_root);
  late final _StringsAuthorizationJa authorization =
      _StringsAuthorizationJa._(_root);
  late final _StringsFooterJa footer = _StringsFooterJa._(_root);
  late final _StringsErrorJa error = _StringsErrorJa._(_root);
  late final _StringsTicketPageJa ticketPage = _StringsTicketPageJa._(_root);
}

// Path: homePage
class _StringsHomePageJa {
  _StringsHomePageJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsHomePageTitleAndLogoJa titleAndLogo =
      _StringsHomePageTitleAndLogoJa._(_root);
  late final _StringsHomePageTicketWillBeOnSaleCardJa ticketWillBeOnSaleCard =
      _StringsHomePageTicketWillBeOnSaleCardJa._(_root);
  late final _StringsHomePagePrePurchaseWarningDialogJa
      prePurchaseWarningDialog =
      _StringsHomePagePrePurchaseWarningDialogJa._(_root);
  late final _StringsHomePageTicketsJa tickets =
      _StringsHomePageTicketsJa._(_root);
}

// Path: verifyPurchase
class _StringsVerifyPurchaseJa {
  _StringsVerifyPurchaseJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get processing => '購入処理中...';
  String get processingDescription => '購入記録とユーザを紐づけています。しばらくお待ちください。';
  String get success => '購入処理が完了しました!';
  String get error => 'チケットの購入処理中にエラーが発生しました';
  String get errorDescription =>
      'エラーが発生したため、購入処理が完了できませんでした。ページを再読み込みして再試行してください。';
  String get contact => '問題が解決しない場合は、運営にお問い合わせください';
}

// Path: authorization
class _StringsAuthorizationJa {
  _StringsAuthorizationJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String alreadyLoggedInWithMailAddress({required Object mailAddress}) =>
      '${mailAddress} でログイン済みです';
  String get logOut => 'ログアウト';
  late final _StringsAuthorizationLogOutDialogJa logOutDialog =
      _StringsAuthorizationLogOutDialogJa._(_root);
}

// Path: footer
class _StringsFooterJa {
  _StringsFooterJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get copyRight => '@ FlutterKaigi 2024 実行委員会';
  late final _StringsFooterGoogleCopyrightJa googleCopyright =
      _StringsFooterGoogleCopyrightJa._(_root);
  String get codeOfConduct => '行動規範';
  String get privacyPolicy => 'プライバシーポリシー';
  String get contact => 'お問い合わせ';
  String get license => 'ライセンス';
}

// Path: error
class _StringsErrorJa {
  _StringsErrorJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsErrorNetworkJa network = _StringsErrorNetworkJa._(_root);
}

// Path: ticketPage
class _StringsTicketPageJa {
  _StringsTicketPageJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsTicketPageThankYouCardJa thankYouCard =
      _StringsTicketPageThankYouCardJa._(_root);
  late final _StringsTicketPageWarningForSpeakerProfileJa
      warningForSpeakerProfile =
      _StringsTicketPageWarningForSpeakerProfileJa._(_root);
  late final _StringsTicketPageWarningForPersonalSponsorJa
      warningForPersonalSponsor =
      _StringsTicketPageWarningForPersonalSponsorJa._(_root);
  late final _StringsTicketPageInformationForProfileEditJa
      informationForProfileEdit =
      _StringsTicketPageInformationForProfileEditJa._(_root);
  late final _StringsTicketPageProfileEditRestrictionJa profileEditRestriction =
      _StringsTicketPageProfileEditRestrictionJa._(_root);
  String get designMayBeChanged =>
      '※FlutterKaigi 2024当日に配布するネームプレートのデザインは、変更される可能性があります。';
  late final _StringsTicketPageEditFieldsJa editFields =
      _StringsTicketPageEditFieldsJa._(_root);
}

// Path: homePage.titleAndLogo
class _StringsHomePageTitleAndLogoJa {
  _StringsHomePageTitleAndLogoJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get date => 'November\n21(Thu) - 22(Fri)';
  String get location => '有明セントラルタワーホール&カンファレンス';
}

// Path: homePage.ticketWillBeOnSaleCard
class _StringsHomePageTicketWillBeOnSaleCardJa {
  _StringsHomePageTicketWillBeOnSaleCardJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットはまだ販売されていません';
  String get description =>
      'チケットの販売は、2024年10月7日(月) 10:00 JST から開始されます。\nそれまでしばらくお待ちください。\n\n最新情報はFlutterKaigi公式Xアカウントでもお知らせします(@FlutterKaigi)';
  String get button => '公式Xアカウントへ';
}

// Path: homePage.prePurchaseWarningDialog
class _StringsHomePagePrePurchaseWarningDialogJa {
  _StringsHomePagePrePurchaseWarningDialogJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケット購入前の注意事項';
  String get accept => '同意する';
  String get unaccept => '同意しない';
}

// Path: homePage.tickets
class _StringsHomePageTicketsJa {
  _StringsHomePageTicketsJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsHomePageTicketsVariantJa variant =
      _StringsHomePageTicketsVariantJa._(_root);
  String get buyTicket => 'チケットを購入';
  String get loginBeforeBuy => 'チケットを購入・登録するためには、お手持ちのGoogleアカウントでログインしてください。';
  String get ticketManagedByGoogleAccount =>
      '購入もしくは登録後に、チケットはGoogleアカウントに紐づいて管理されます。';
  String price({required Object price}) => '¥${price}';
  late final _StringsHomePageTicketsAlreadyPurchasedCardJa
      alreadyPurchasedCard =
      _StringsHomePageTicketsAlreadyPurchasedCardJa._(_root);
  late final _StringsHomePageTicketsNormalJa normal =
      _StringsHomePageTicketsNormalJa._(_root);
  late final _StringsHomePageTicketsInvitationJa invitation =
      _StringsHomePageTicketsInvitationJa._(_root);
  late final _StringsHomePageTicketsPersonalSponsorJa personalSponsor =
      _StringsHomePageTicketsPersonalSponsorJa._(_root);
  late final _StringsHomePageTicketsStudentJa student =
      _StringsHomePageTicketsStudentJa._(_root);
}

// Path: authorization.logOutDialog
class _StringsAuthorizationLogOutDialogJa {
  _StringsAuthorizationLogOutDialogJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'ログアウトしますか？';
  String get description => 'ログアウトすると、再度ログインするまでチケットの購入や登録ができなくなります。';
  String get cancel => 'キャンセル';
  String get logout => 'ログアウト';
}

// Path: footer.googleCopyright
class _StringsFooterGoogleCopyrightJa {
  _StringsFooterGoogleCopyrightJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get text0 =>
      'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
  String get text1 => 'The Flutter name and the Flutter logo';
  String get text2 => 'are trademarks of Google LLC.';
}

// Path: error.network
class _StringsErrorNetworkJa {
  _StringsErrorNetworkJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get status400 => 'リクエストが不正です';
  String get status403 => 'リクエストが拒否されました';
  String get status404 => 'リクエストが見つかりません';
  String get status429 => 'リクエストが多すぎます';
  String get status500 => 'サーバーでエラーが発生しました';
  String get status503 => 'サーバーが過負荷状態です';
  String statusOther({required Object statusCode}) =>
      'ネットワークエラーが発生しました (ステータスコード: ${statusCode})';
  String get tryAgain => '時間をおいて再度お試しください';
  String get unknown => '不明なエラーが発生しました';
}

// Path: ticketPage.thankYouCard
class _StringsTicketPageThankYouCardJa {
  _StringsTicketPageThankYouCardJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットを購入いただき、ありがとうございます!';
  String description({required Object type}) => '${type} をお持ちです';
}

// Path: ticketPage.warningForSpeakerProfile
class _StringsTicketPageWarningForSpeakerProfileJa {
  _StringsTicketPageWarningForSpeakerProfileJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '登壇者のプロフィール情報についての注意';
  String get description => '登壇者のプロフィールは、FlutterKaigi公式サイトに公開されます。注意してください';
}

// Path: ticketPage.warningForPersonalSponsor
class _StringsTicketPageWarningForPersonalSponsorJa {
  _StringsTicketPageWarningForPersonalSponsorJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '個人スポンサーのプロフィール情報についての注意';
  String get description =>
      'あなたは個人スポンサーのチケットをお持ちです。FlutterKaigi公式サイトにプロフィール情報を掲載するかどうかを選ぶことができます\nプロフィールの掲載は10月下旬を予定しています';
  late final _StringsTicketPageWarningForPersonalSponsorButtonsJa buttons =
      _StringsTicketPageWarningForPersonalSponsorButtonsJa._(_root);
}

// Path: ticketPage.informationForProfileEdit
class _StringsTicketPageInformationForProfileEditJa {
  _StringsTicketPageInformationForProfileEditJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'プロフィール情報について';
  String get description =>
      'ここで入力したプロフィール情報は、FlutterKaigi当日のネームプレートに印刷されます。\n名前・ひとこと・Xアカウント・プロフィール画像を編集できます。';
}

// Path: ticketPage.profileEditRestriction
class _StringsTicketPageProfileEditRestrictionJa {
  _StringsTicketPageProfileEditRestrictionJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'プロフィール編集の注意';
  String get description =>
      '- プロフィール画像は、Googleアカウントの画像もしくはアップロードした画像のみ使用できます。\n- プロフィールは、**2024年11月12日(火) 22:00** まで編集可能です。印刷の関係により、**それ以降の編集はできません。**';
}

// Path: ticketPage.editFields
class _StringsTicketPageEditFieldsJa {
  _StringsTicketPageEditFieldsJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final _StringsTicketPageEditFieldsDialogJa dialog =
      _StringsTicketPageEditFieldsDialogJa._(_root);
  late final _StringsTicketPageEditFieldsNameJa name =
      _StringsTicketPageEditFieldsNameJa._(_root);
  late final _StringsTicketPageEditFieldsCommentJa comment =
      _StringsTicketPageEditFieldsCommentJa._(_root);
  late final _StringsTicketPageEditFieldsXAccountJa xAccount =
      _StringsTicketPageEditFieldsXAccountJa._(_root);
  late final _StringsTicketPageEditFieldsAvatarJa avatar =
      _StringsTicketPageEditFieldsAvatarJa._(_root);
  late final _StringsTicketPageEditFieldsIsAdultJa isAdult =
      _StringsTicketPageEditFieldsIsAdultJa._(_root);
  late final _StringsTicketPageEditFieldsResultsJa results =
      _StringsTicketPageEditFieldsResultsJa._(_root);
}

// Path: homePage.tickets.variant
class _StringsHomePageTicketsVariantJa {
  _StringsHomePageTicketsVariantJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get general => '一般チケット';
  String get sessionSpeaker => 'セッション登壇者チケット';
  String get sponsorSession => 'スポンサーセッション登壇者チケット';
  String get sponsorInvitation => 'スポンサー招待チケット';
  String get sponsorBooth => 'スポンサーブースチケット';
  String get personalSponsor => '個人スポンサー付き参加チケット';
}

// Path: homePage.tickets.alreadyPurchasedCard
class _StringsHomePageTicketsAlreadyPurchasedCardJa {
  _StringsHomePageTicketsAlreadyPurchasedCardJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットを購入いただきありがとうございます';
  String get description =>
      'あなたは既にチケットをお持ちです。チケットページから、チケットの確認・ネームプレートの編集を行ってください。';
  String get button => 'チケットページへ';
  String get verifyError => 'チケットをお持ちかどうかの確認中にエラーが発生しました。';
}

// Path: homePage.tickets.normal
class _StringsHomePageTicketsNormalJa {
  _StringsHomePageTicketsNormalJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get name => '一般チケット';
  List<String> get description => [
        '**[一般チケットの特典]**',
        '- **本編への参加**',
        '- **懇親会への参加**',
        '- **各種ノベルティ**',
      ];
}

// Path: homePage.tickets.invitation
class _StringsHomePageTicketsInvitationJa {
  _StringsHomePageTicketsInvitationJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get description => '招待コードまたはクーポンコードをお持ちの方はこちらに入力してください';
  String get textBoxTitle => '招待コード もしくは クーポンコード';
  String get textBoxDescription => 'コードを入力';
  String get applyCodeButton => 'コードを適用';
  late final _StringsHomePageTicketsInvitationErrorJa error =
      _StringsHomePageTicketsInvitationErrorJa._(_root);
  late final _StringsHomePageTicketsInvitationValidationJa validation =
      _StringsHomePageTicketsInvitationValidationJa._(_root);
}

// Path: homePage.tickets.personalSponsor
class _StringsHomePageTicketsPersonalSponsorJa {
  _StringsHomePageTicketsPersonalSponsorJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get name => '個人スポンサー付き参加チケット';
  List<String> get description => [
        '- 個人スポンサー付き参加チケットは、一般チケットを内包します',
        '',
        '**[個人スポンサーの特典]**',
        '- **前夜祭への参加**: 2024/11/20(水)に開催する前夜祭へ参加頂けます([詳細はこちら](https://medium.com/flutterkaigi/flutterkaigi-2024%E5%89%8D%E5%A4%9C%E7%A5%AD%E3%82%92%E9%96%8B%E5%82%AC%E3%81%97%E3%81%BE%E3%81%99-5e7ff7ba3947))',
        '- **優先Viewing Area**: セッションルーム前方に優先エリアを設置',
        '- **専用FlutterKaigiグッズ**',
        '- **開会式でのメッセージ紹介**',
        '- **Webサイトへのアイコン掲載**',
      ];
}

// Path: homePage.tickets.student
class _StringsHomePageTicketsStudentJa {
  _StringsHomePageTicketsStudentJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get name => '学割について';
  String get description =>
      'FlutterKaigi 2024当日に、学生(中学・高校・大学(短期大学,大学院を含む)・高等専門学校・専修学校・専門学校・職業訓練学校)の方は受付にて学生証を提示することによりチケット代金全額を返金致します。\n※返金は当日のみ有効です。また、一般チケットのみ対象となります。所属している教育機関が対象かどうか不明な場合は、運営にお問い合わせください。';
}

// Path: ticketPage.warningForPersonalSponsor.buttons
class _StringsTicketPageWarningForPersonalSponsorButtonsJa {
  _StringsTicketPageWarningForPersonalSponsorButtonsJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get publishProfile => 'プロフィールを公開する';
  String get doNotPublishProfile => 'プロフィールを非公開にする';
}

// Path: ticketPage.editFields.dialog
class _StringsTicketPageEditFieldsDialogJa {
  _StringsTicketPageEditFieldsDialogJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => '決定';
  String get cancel => 'キャンセル';
}

// Path: ticketPage.editFields.name
class _StringsTicketPageEditFieldsNameJa {
  _StringsTicketPageEditFieldsNameJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '名前';
  String get description => '名前を入力してください。(20文字以内 特殊文字は使用できません)';
  late final _StringsTicketPageEditFieldsNameValidationJa validation =
      _StringsTicketPageEditFieldsNameValidationJa._(_root);
}

// Path: ticketPage.editFields.comment
class _StringsTicketPageEditFieldsCommentJa {
  _StringsTicketPageEditFieldsCommentJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'ひとこと';
  String get description => 'ひとことを入力してください。(40文字以内 特殊文字は使用できません)';
  late final _StringsTicketPageEditFieldsCommentValidationJa validation =
      _StringsTicketPageEditFieldsCommentValidationJa._(_root);
}

// Path: ticketPage.editFields.xAccount
class _StringsTicketPageEditFieldsXAccountJa {
  _StringsTicketPageEditFieldsXAccountJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Xアカウント';
  String get description =>
      'Xアカウントを入力してください。\n※Xアカウントは、@は含めず入力してください。(例: @FlutterKaigi -> FlutterKaigi)';
  String get placeholder => 'Xアカウント';
  String get deleteButton => 'Xアカウントの記載を削除';
  String get unknown => '未設定';
  late final _StringsTicketPageEditFieldsXAccountValidationJa validation =
      _StringsTicketPageEditFieldsXAccountValidationJa._(_root);
}

// Path: ticketPage.editFields.avatar
class _StringsTicketPageEditFieldsAvatarJa {
  _StringsTicketPageEditFieldsAvatarJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'プロフィール画像';
  String get description =>
      'プロフィール画像をアップロードしてください。\n※アップロードできる画像は、PNG, JPG形式の画像のみです。';
  String get uploadButton => '画像を選択';
  String get removeButton => 'デフォルトに戻す(Googleアカウントの画像になります)';
  String get uploadSuccess => 'プロフィール画像をアップロードしました';
  String get deleteSuccess => 'プロフィール画像をデフォルトに戻しました';
  String get uploadError => 'プロフィール画像のアップロードに失敗しました';
  String get deleteError => 'プロフィール画像をデフォルトに戻す最中にエラーが発生しました';
  late final _StringsTicketPageEditFieldsAvatarCropJa crop =
      _StringsTicketPageEditFieldsAvatarCropJa._(_root);
}

// Path: ticketPage.editFields.isAdult
class _StringsTicketPageEditFieldsIsAdultJa {
  _StringsTicketPageEditFieldsIsAdultJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'FlutterKaigi 2024当日に成人していますか?';
  String get description => '懇親会におけるアルコールの提供は、成人の方に限ります。';
  String get yes => 'はい';
  String get no => 'いいえ';
  String get ok => 'OK';
}

// Path: ticketPage.editFields.results
class _StringsTicketPageEditFieldsResultsJa {
  _StringsTicketPageEditFieldsResultsJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get success => 'プロフィール情報を更新しました';
  String get error => 'プロフィール情報の更新に失敗しました';
}

// Path: homePage.tickets.invitation.error
class _StringsHomePageTicketsInvitationErrorJa {
  _StringsHomePageTicketsInvitationErrorJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get status404 => 'プロモーションコードが見つかりません';
  String get status429 => 'リクエストが多過ぎます 数分後に再度お試しください';
  String get status500 => 'サーバーでエラーが発生しました';
  String get unknown => '不明なエラーが発生しました';
}

// Path: homePage.tickets.invitation.validation
class _StringsHomePageTicketsInvitationValidationJa {
  _StringsHomePageTicketsInvitationValidationJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => 'プロモーションコードが有効です';
  String get invalid => 'プロモーションコードが無効です';
  String get nextPayment =>
      '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットを購入してください';
  String get nextConfirmOrder =>
      '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットの注文を確定してください';
  late final _StringsHomePageTicketsInvitationValidationDialogJa dialog =
      _StringsHomePageTicketsInvitationValidationDialogJa._(_root);
  late final _StringsHomePageTicketsInvitationValidationInvitedJa invited =
      _StringsHomePageTicketsInvitationValidationInvitedJa._(_root);
}

// Path: ticketPage.editFields.name.validation
class _StringsTicketPageEditFieldsNameValidationJa {
  _StringsTicketPageEditFieldsNameValidationJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tooLong => '名前は20文字以内で入力してください';
  String get invalidCharacters => '名前には特殊文字は使用できません';
  String get empty => '名前を入力してください';
}

// Path: ticketPage.editFields.comment.validation
class _StringsTicketPageEditFieldsCommentValidationJa {
  _StringsTicketPageEditFieldsCommentValidationJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tooLong => 'ひとことは40文字以内で入力してください';
  String get invalidCharacters => 'ひとことには特殊文字は使用できません';
  String get empty => 'ひとことを入力してください';
}

// Path: ticketPage.editFields.xAccount.validation
class _StringsTicketPageEditFieldsXAccountValidationJa {
  _StringsTicketPageEditFieldsXAccountValidationJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tooLong => 'Xアカウントは40文字以内で入力してください';
  String get invalidCharacters => 'Xアカウントには英数字以外の文字は使用できません';
}

// Path: ticketPage.editFields.avatar.crop
class _StringsTicketPageEditFieldsAvatarCropJa {
  _StringsTicketPageEditFieldsAvatarCropJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '画像を切り取ってください';
  String get cropButton => '切り取る';
}

// Path: homePage.tickets.invitation.validation.dialog
class _StringsHomePageTicketsInvitationValidationDialogJa {
  _StringsHomePageTicketsInvitationValidationDialogJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => '決定';
  String get cancel => 'キャンセル';
}

// Path: homePage.tickets.invitation.validation.invited
class _StringsHomePageTicketsInvitationValidationInvitedJa {
  _StringsHomePageTicketsInvitationValidationInvitedJa._(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '招待コードが正常に検証されました';
  String get description => '以下の情報を入力してください';
  String get warning => '「次へ」を押すと、情報は確定されます。変更するには、運営へお問い合わせください。';
  String get sponsor => '所属スポンサー';
  String get session => '登壇セッション';
  String get next => '次へ';
  String get pleaseWaitForAMoment => '少々お待ちください...';
}

// Path: <root>
class _StringsEn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  _StringsEn.build(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.en,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ),
        super.build(
            cardinalResolver: cardinalResolver,
            ordinalResolver: ordinalResolver) {
    super.$meta.setFlatMapFunction(
        $meta.getTranslation); // copy base translations to super.$meta
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <en>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) =>
      $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

  @override
  late final _StringsEn _root = this; // ignore: unused_field

  // Translations
  @override
  String get flutterKaigi => 'FlutterKaigi';
  @override
  String get year => '2024';
  @override
  String get officialSite => 'Official Site';
  @override
  String get ticketSite => 'Ticket Site';
  @override
  late final _StringsHomePageEn homePage = _StringsHomePageEn._(_root);
  @override
  late final _StringsVerifyPurchaseEn verifyPurchase =
      _StringsVerifyPurchaseEn._(_root);
  @override
  late final _StringsAuthorizationEn authorization =
      _StringsAuthorizationEn._(_root);
  @override
  late final _StringsFooterEn footer = _StringsFooterEn._(_root);
  @override
  late final _StringsErrorEn error = _StringsErrorEn._(_root);
  @override
  late final _StringsTicketPageEn ticketPage = _StringsTicketPageEn._(_root);
}

// Path: homePage
class _StringsHomePageEn extends _StringsHomePageJa {
  _StringsHomePageEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsHomePageTitleAndLogoEn titleAndLogo =
      _StringsHomePageTitleAndLogoEn._(_root);
  @override
  late final _StringsHomePageTicketWillBeOnSaleCardEn ticketWillBeOnSaleCard =
      _StringsHomePageTicketWillBeOnSaleCardEn._(_root);
  @override
  late final _StringsHomePagePrePurchaseWarningDialogEn
      prePurchaseWarningDialog =
      _StringsHomePagePrePurchaseWarningDialogEn._(_root);
  @override
  late final _StringsHomePageTicketsEn tickets =
      _StringsHomePageTicketsEn._(_root);
}

// Path: verifyPurchase
class _StringsVerifyPurchaseEn extends _StringsVerifyPurchaseJa {
  _StringsVerifyPurchaseEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get processing => 'Verifying purchase...';
  @override
  String get processingDescription =>
      'Linking your purchase record and user. Please wait a moment...';
  @override
  String get success => 'Purchase verification completed';
  @override
  String get error =>
      'An error occurred while verifying the purchase of the ticket.';
  @override
  String get errorDescription =>
      'The purchase could not be completed due to an error. Please refresh the page and try again.';
  @override
  String get contact =>
      'If the problem persists, please contact the organizers.';
}

// Path: authorization
class _StringsAuthorizationEn extends _StringsAuthorizationJa {
  _StringsAuthorizationEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String alreadyLoggedInWithMailAddress({required Object mailAddress}) =>
      'Already logged in with ${mailAddress}';
  @override
  String get logOut => 'Log Out';
  @override
  late final _StringsAuthorizationLogOutDialogEn logOutDialog =
      _StringsAuthorizationLogOutDialogEn._(_root);
}

// Path: footer
class _StringsFooterEn extends _StringsFooterJa {
  _StringsFooterEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get copyRight => '@ FlutterKaigi 2024 Organizing Committee';
  @override
  late final _StringsFooterGoogleCopyrightEn googleCopyright =
      _StringsFooterGoogleCopyrightEn._(_root);
  @override
  String get codeOfConduct => 'Code of Conduct';
  @override
  String get privacyPolicy => 'Privacy Policy';
  @override
  String get contact => 'Contact';
  @override
  String get license => 'License';
}

// Path: error
class _StringsErrorEn extends _StringsErrorJa {
  _StringsErrorEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsErrorNetworkEn network = _StringsErrorNetworkEn._(_root);
}

// Path: ticketPage
class _StringsTicketPageEn extends _StringsTicketPageJa {
  _StringsTicketPageEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsTicketPageThankYouCardEn thankYouCard =
      _StringsTicketPageThankYouCardEn._(_root);
  @override
  late final _StringsTicketPageWarningForSpeakerProfileEn
      warningForSpeakerProfile =
      _StringsTicketPageWarningForSpeakerProfileEn._(_root);
  @override
  late final _StringsTicketPageWarningForPersonalSponsorEn
      warningForPersonalSponsor =
      _StringsTicketPageWarningForPersonalSponsorEn._(_root);
  @override
  late final _StringsTicketPageInformationForProfileEditEn
      informationForProfileEdit =
      _StringsTicketPageInformationForProfileEditEn._(_root);
  @override
  late final _StringsTicketPageProfileEditRestrictionEn profileEditRestriction =
      _StringsTicketPageProfileEditRestrictionEn._(_root);
  @override
  String get designMayBeChanged =>
      '※The design of the name card may be changed on the day of FlutterKaigi 2024.';
  @override
  late final _StringsTicketPageEditFieldsEn editFields =
      _StringsTicketPageEditFieldsEn._(_root);
}

// Path: homePage.titleAndLogo
class _StringsHomePageTitleAndLogoEn extends _StringsHomePageTitleAndLogoJa {
  _StringsHomePageTitleAndLogoEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'November\n21(Thu) - 22(Fri)';
  @override
  String get location => 'Ariake Central Tower & Conference';
}

// Path: homePage.ticketWillBeOnSaleCard
class _StringsHomePageTicketWillBeOnSaleCardEn
    extends _StringsHomePageTicketWillBeOnSaleCardJa {
  _StringsHomePageTicketWillBeOnSaleCardEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Tickets are not on sale yet';
  @override
  String get description =>
      'Ticket sales will start on October 7 (Monday). Please wait a moment.\n\nLatest information will also be announced on the FlutterKaigi official X account (@FlutterKaigi).';
  @override
  String get button => 'Go to the FlutterKaigi official X account';
}

// Path: homePage.prePurchaseWarningDialog
class _StringsHomePagePrePurchaseWarningDialogEn
    extends _StringsHomePagePrePurchaseWarningDialogJa {
  _StringsHomePagePrePurchaseWarningDialogEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Pre-Purchase';
  @override
  String get accept => 'Accept';
  @override
  String get unaccept => 'Unaccept';
}

// Path: homePage.tickets
class _StringsHomePageTicketsEn extends _StringsHomePageTicketsJa {
  _StringsHomePageTicketsEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsHomePageTicketsVariantEn variant =
      _StringsHomePageTicketsVariantEn._(_root);
  @override
  String get buyTicket => 'Buy Ticket';
  @override
  String get loginBeforeBuy =>
      'Please login with your Google account to buy or register a ticket.';
  @override
  String get ticketManagedByGoogleAccount =>
      'After purchase or registration, tickets will be managed by your Google account.';
  @override
  late final _StringsHomePageTicketsAlreadyPurchasedCardEn
      alreadyPurchasedCard =
      _StringsHomePageTicketsAlreadyPurchasedCardEn._(_root);
  @override
  late final _StringsHomePageTicketsNormalEn normal =
      _StringsHomePageTicketsNormalEn._(_root);
  @override
  late final _StringsHomePageTicketsInvitationEn invitation =
      _StringsHomePageTicketsInvitationEn._(_root);
  @override
  late final _StringsHomePageTicketsPersonalSponsorEn personalSponsor =
      _StringsHomePageTicketsPersonalSponsorEn._(_root);
  @override
  late final _StringsHomePageTicketsStudentEn student =
      _StringsHomePageTicketsStudentEn._(_root);
}

// Path: authorization.logOutDialog
class _StringsAuthorizationLogOutDialogEn
    extends _StringsAuthorizationLogOutDialogJa {
  _StringsAuthorizationLogOutDialogEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Are you sure you want to log out?';
  @override
  String get description =>
      'Logging out will prevent you from purchasing or registering tickets until you log in again.';
  @override
  String get cancel => 'Cancel';
  @override
  String get logout => 'Log Out';
}

// Path: footer.googleCopyright
class _StringsFooterGoogleCopyrightEn extends _StringsFooterGoogleCopyrightJa {
  _StringsFooterGoogleCopyrightEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get text0 =>
      'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
  @override
  String get text1 => 'The Flutter name and the Flutter logo';
  @override
  String get text2 => 'are trademarks of Google LLC.';
}

// Path: error.network
class _StringsErrorNetworkEn extends _StringsErrorNetworkJa {
  _StringsErrorNetworkEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get status400 => 'Bad Request';
  @override
  String get status403 => 'Forbidden';
  @override
  String get status404 => 'Not Found';
  @override
  String get status429 => 'Too Many Requests';
  @override
  String get status500 => 'Internal Server Error';
  @override
  String get status503 => 'Service Unavailable';
  @override
  String statusOther({required Object statusCode}) =>
      'A network error occurred (Status Code: ${statusCode})';
  @override
  String get tryAgain => 'Please try again later.';
  @override
  String get unknown => 'An unknown error occurred.';
}

// Path: ticketPage.thankYouCard
class _StringsTicketPageThankYouCardEn
    extends _StringsTicketPageThankYouCardJa {
  _StringsTicketPageThankYouCardEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Thank you for purchasing a ticket!';
  @override
  String description({required Object type}) => 'You have a ${type}.';
}

// Path: ticketPage.warningForSpeakerProfile
class _StringsTicketPageWarningForSpeakerProfileEn
    extends _StringsTicketPageWarningForSpeakerProfileJa {
  _StringsTicketPageWarningForSpeakerProfileEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Speaker Profile';
  @override
  String get description =>
      'Speaker profiles will be published on the FlutterKaigi official site. Please be careful.';
}

// Path: ticketPage.warningForPersonalSponsor
class _StringsTicketPageWarningForPersonalSponsorEn
    extends _StringsTicketPageWarningForPersonalSponsorJa {
  _StringsTicketPageWarningForPersonalSponsorEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Personal Sponsor Profile';
  @override
  String get description =>
      'You have a personal sponsor ticket. You can choose to publish your profile on the FlutterKaigi official site.\nThe profile will be published in mid-October.';
  @override
  late final _StringsTicketPageWarningForPersonalSponsorButtonsEn buttons =
      _StringsTicketPageWarningForPersonalSponsorButtonsEn._(_root);
}

// Path: ticketPage.informationForProfileEdit
class _StringsTicketPageInformationForProfileEditEn
    extends _StringsTicketPageInformationForProfileEditJa {
  _StringsTicketPageInformationForProfileEditEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Profile Information';
  @override
  String get description =>
      'The profile information you enter here will be printed on your name card at FlutterKaigi.\nYou can edit your name, comment, X account, and profile image.';
}

// Path: ticketPage.profileEditRestriction
class _StringsTicketPageProfileEditRestrictionEn
    extends _StringsTicketPageProfileEditRestrictionJa {
  _StringsTicketPageProfileEditRestrictionEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Profile Editing';
  @override
  String get description =>
      '- Profile images can only be used with your Google account image or uploaded image.\n- You can edit your profile until **Nov 12 (Tue) 22:00 JST**. After that, you will **not be able to edit your profile** due to printing reasons.';
}

// Path: ticketPage.editFields
class _StringsTicketPageEditFieldsEn extends _StringsTicketPageEditFieldsJa {
  _StringsTicketPageEditFieldsEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _StringsTicketPageEditFieldsDialogEn dialog =
      _StringsTicketPageEditFieldsDialogEn._(_root);
  @override
  late final _StringsTicketPageEditFieldsNameEn name =
      _StringsTicketPageEditFieldsNameEn._(_root);
  @override
  late final _StringsTicketPageEditFieldsCommentEn comment =
      _StringsTicketPageEditFieldsCommentEn._(_root);
  @override
  late final _StringsTicketPageEditFieldsXAccountEn xAccount =
      _StringsTicketPageEditFieldsXAccountEn._(_root);
  @override
  late final _StringsTicketPageEditFieldsAvatarEn avatar =
      _StringsTicketPageEditFieldsAvatarEn._(_root);
  @override
  late final _StringsTicketPageEditFieldsIsAdultEn isAdult =
      _StringsTicketPageEditFieldsIsAdultEn._(_root);
  @override
  late final _StringsTicketPageEditFieldsResultsEn results =
      _StringsTicketPageEditFieldsResultsEn._(_root);
}

// Path: homePage.tickets.variant
class _StringsHomePageTicketsVariantEn
    extends _StringsHomePageTicketsVariantJa {
  _StringsHomePageTicketsVariantEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get general => 'General Ticket';
  @override
  String get sessionSpeaker => 'Session Speaker Ticket';
  @override
  String get sponsorSession => 'Sponsor Session Speaker Ticket';
  @override
  String get sponsorInvitation => 'Sponsor Invitation Ticket';
  @override
  String get sponsorBooth => 'Sponsor Booth Ticket';
  @override
  String get personalSponsor => 'Personal Sponsor Ticket';
}

// Path: homePage.tickets.alreadyPurchasedCard
class _StringsHomePageTicketsAlreadyPurchasedCardEn
    extends _StringsHomePageTicketsAlreadyPurchasedCardJa {
  _StringsHomePageTicketsAlreadyPurchasedCardEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Thank you for purchasing a ticket!';
  @override
  String get description =>
      'You already have a ticket. Please check your ticket and edit your name card from the ticket page.';
  @override
  String get button => 'Ticket Page';
  @override
  String get verifyError =>
      'An error occurred while verifying whether you have a ticket.';
}

// Path: homePage.tickets.normal
class _StringsHomePageTicketsNormalEn extends _StringsHomePageTicketsNormalJa {
  _StringsHomePageTicketsNormalEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Normal Ticket';
  @override
  List<String> get description => [
        '**[Normal Ticket Benefits]**',
        '- **Access to the main event**',
        '- **Access to the party**',
        '- **Various Merchandise**',
      ];
}

// Path: homePage.tickets.invitation
class _StringsHomePageTicketsInvitationEn
    extends _StringsHomePageTicketsInvitationJa {
  _StringsHomePageTicketsInvitationEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get description =>
      'If you have an invitation code or coupon code, please enter it here.';
  @override
  String get textBoxTitle => 'Invitation Code or Coupon Code';
  @override
  String get textBoxDescription => 'Enter the code';
  @override
  String get applyCodeButton => 'Apply Code';
  @override
  late final _StringsHomePageTicketsInvitationValidationEn validation =
      _StringsHomePageTicketsInvitationValidationEn._(_root);
}

// Path: homePage.tickets.personalSponsor
class _StringsHomePageTicketsPersonalSponsorEn
    extends _StringsHomePageTicketsPersonalSponsorJa {
  _StringsHomePageTicketsPersonalSponsorEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Personal Sponsor Ticket';
  @override
  List<String> get description => [
        '- Personal Sponsor Ticket includes a general ticket',
        '',
        '**[Personal Sponsor Benefits]**',
        '- **Pre-Party Access**: Access to the pre-party on November 20 (Wednesday) ([details here](https://medium.com/flutterkaigi/flutterkaigi-2024%E5%89%8D%E5%A4%9C%E7%A5%AD%E3%82%92%E9%96%8B%E5%82%AC%E3%81%97%E3%81%BE%E3%81%99-5e7ff7ba3947))',
        '- **Exclusive Viewing Area**: Dedicated area in front of the session room',
        '- **Exclusive FlutterKaigi Merchandise**',
        '- **Introduction at the Opening Ceremony**',
        '- **Icon on the Website**',
      ];
}

// Path: homePage.tickets.student
class _StringsHomePageTicketsStudentEn
    extends _StringsHomePageTicketsStudentJa {
  _StringsHomePageTicketsStudentEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Student Discount';
  @override
  String get description =>
      'If you are a student (Junior High School, High School, University(Including Junior College, Graduate School), Technical College, College of Technology(KOSEN), Specialized School, Vocational School)on the day of FlutterKaigi 2024, we will refund the full ticket price by showing your student ID at time of reception.\n※ Refunds are only valid on the day of the event. Only general tickets are eligible. If you are unsure whether your educational institution is eligible, please contact the organizers.';
}

// Path: ticketPage.warningForPersonalSponsor.buttons
class _StringsTicketPageWarningForPersonalSponsorButtonsEn
    extends _StringsTicketPageWarningForPersonalSponsorButtonsJa {
  _StringsTicketPageWarningForPersonalSponsorButtonsEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get publishProfile => 'Publish Profile';
  @override
  String get doNotPublishProfile => 'DO NOT Publish Profile';
}

// Path: ticketPage.editFields.dialog
class _StringsTicketPageEditFieldsDialogEn
    extends _StringsTicketPageEditFieldsDialogJa {
  _StringsTicketPageEditFieldsDialogEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'OK';
  @override
  String get cancel => 'Cancel';
}

// Path: ticketPage.editFields.name
class _StringsTicketPageEditFieldsNameEn
    extends _StringsTicketPageEditFieldsNameJa {
  _StringsTicketPageEditFieldsNameEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Name';
  @override
  String get description =>
      'Please enter your name. (20 characters or less, no special characters allowed)';
  @override
  late final _StringsTicketPageEditFieldsNameValidationEn validation =
      _StringsTicketPageEditFieldsNameValidationEn._(_root);
}

// Path: ticketPage.editFields.comment
class _StringsTicketPageEditFieldsCommentEn
    extends _StringsTicketPageEditFieldsCommentJa {
  _StringsTicketPageEditFieldsCommentEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Comment';
  @override
  String get description =>
      'Please enter your comment. (40 characters or less, no special characters allowed)';
  @override
  late final _StringsTicketPageEditFieldsCommentValidationEn validation =
      _StringsTicketPageEditFieldsCommentValidationEn._(_root);
}

// Path: ticketPage.editFields.xAccount
class _StringsTicketPageEditFieldsXAccountEn
    extends _StringsTicketPageEditFieldsXAccountJa {
  _StringsTicketPageEditFieldsXAccountEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'X Account';
  @override
  String get description =>
      'Please enter your X account. (No @ symbol allowed)';
  @override
  String get placeholder => 'X Account';
  @override
  String get deleteButton => 'Delete X Account Entry';
  @override
  String get unknown => 'Unknown';
  @override
  late final _StringsTicketPageEditFieldsXAccountValidationEn validation =
      _StringsTicketPageEditFieldsXAccountValidationEn._(_root);
}

// Path: ticketPage.editFields.avatar
class _StringsTicketPageEditFieldsAvatarEn
    extends _StringsTicketPageEditFieldsAvatarJa {
  _StringsTicketPageEditFieldsAvatarEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Profile Image';
  @override
  String get description =>
      'Please upload your profile image. (PNG, JPG format)';
  @override
  String get uploadButton => 'Upload Image';
  @override
  String get removeButton => 'Reset to Default (Google Account Image)';
  @override
  String get uploadSuccess => 'Profile image uploaded successfully';
  @override
  String get deleteSuccess => 'Profile image reset to default successfully';
  @override
  String get uploadError => 'Profile image upload failed';
  @override
  String get deleteError => 'Profile image reset to default failed';
  @override
  late final _StringsTicketPageEditFieldsAvatarCropEn crop =
      _StringsTicketPageEditFieldsAvatarCropEn._(_root);
}

// Path: ticketPage.editFields.isAdult
class _StringsTicketPageEditFieldsIsAdultEn
    extends _StringsTicketPageEditFieldsIsAdultJa {
  _StringsTicketPageEditFieldsIsAdultEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Are you 20 or older on November 21, 2024?';
  @override
  String get description =>
      'Alcohol will be served at the party for 20 or older attendees.';
  @override
  String get yes => 'Yes';
  @override
  String get no => 'No';
  @override
  String get ok => 'OK';
}

// Path: ticketPage.editFields.results
class _StringsTicketPageEditFieldsResultsEn
    extends _StringsTicketPageEditFieldsResultsJa {
  _StringsTicketPageEditFieldsResultsEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get success => 'Profile information updated successfully';
  @override
  String get error => 'Profile information update failed';
}

// Path: homePage.tickets.invitation.validation
class _StringsHomePageTicketsInvitationValidationEn
    extends _StringsHomePageTicketsInvitationValidationJa {
  _StringsHomePageTicketsInvitationValidationEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'Your code is valid!';
  @override
  String get invalid => 'Your code is invalid.';
  @override
  String get nextPayment =>
      'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and purchase the ticket.';
  @override
  String get nextConfirmOrder =>
      'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and confirm the order.';
  @override
  late final _StringsHomePageTicketsInvitationValidationDialogEn dialog =
      _StringsHomePageTicketsInvitationValidationDialogEn._(_root);
  @override
  late final _StringsHomePageTicketsInvitationValidationInvitedEn invited =
      _StringsHomePageTicketsInvitationValidationInvitedEn._(_root);
}

// Path: ticketPage.editFields.name.validation
class _StringsTicketPageEditFieldsNameValidationEn
    extends _StringsTicketPageEditFieldsNameValidationJa {
  _StringsTicketPageEditFieldsNameValidationEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get tooLong => 'Name must be 20 characters or less';
  @override
  String get invalidCharacters => 'Name must be alphanumeric';
}

// Path: ticketPage.editFields.comment.validation
class _StringsTicketPageEditFieldsCommentValidationEn
    extends _StringsTicketPageEditFieldsCommentValidationJa {
  _StringsTicketPageEditFieldsCommentValidationEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get tooLong => 'Comment must be 40 characters or less';
  @override
  String get invalidCharacters => 'Comment must be alphanumeric';
}

// Path: ticketPage.editFields.xAccount.validation
class _StringsTicketPageEditFieldsXAccountValidationEn
    extends _StringsTicketPageEditFieldsXAccountValidationJa {
  _StringsTicketPageEditFieldsXAccountValidationEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get tooLong => 'X Account must be 40 characters or less';
  @override
  String get invalidCharacters => 'X Account must be alphanumeric';
}

// Path: ticketPage.editFields.avatar.crop
class _StringsTicketPageEditFieldsAvatarCropEn
    extends _StringsTicketPageEditFieldsAvatarCropJa {
  _StringsTicketPageEditFieldsAvatarCropEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Please crop the image';
  @override
  String get cropButton => 'Crop';
}

// Path: homePage.tickets.invitation.validation.dialog
class _StringsHomePageTicketsInvitationValidationDialogEn
    extends _StringsHomePageTicketsInvitationValidationDialogJa {
  _StringsHomePageTicketsInvitationValidationDialogEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'OK';
  @override
  String get cancel => 'Cancel';
}

// Path: homePage.tickets.invitation.validation.invited
class _StringsHomePageTicketsInvitationValidationInvitedEn
    extends _StringsHomePageTicketsInvitationValidationInvitedJa {
  _StringsHomePageTicketsInvitationValidationInvitedEn._(_StringsEn root)
      : this._root = root,
        super._(root);

  @override
  final _StringsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Invitation code has been successfully validated';
  @override
  String get description => 'Please enter the following information';
  @override
  String get warning =>
      'Pressing "Next" will finalize the information. If you need to make changes, please contact the organizers.';
  @override
  String get sponsor => 'Sponsor you are member of';
  @override
  String get session => 'Session you will speak at';
  @override
  String get next => 'Next';
  @override
  String get pleaseWaitForAMoment => 'Please wait a moment...';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'flutterKaigi':
        return 'FlutterKaigi';
      case 'year':
        return '2024';
      case 'officialSite':
        return '公式サイト';
      case 'ticketSite':
        return 'チケットサイト';
      case 'homePage.titleAndLogo.date':
        return 'November\n21(Thu) - 22(Fri)';
      case 'homePage.titleAndLogo.location':
        return '有明セントラルタワーホール&カンファレンス';
      case 'homePage.ticketWillBeOnSaleCard.title':
        return 'チケットはまだ販売されていません';
      case 'homePage.ticketWillBeOnSaleCard.description':
        return 'チケットの販売は、2024年10月7日(月) 10:00 JST から開始されます。\nそれまでしばらくお待ちください。\n\n最新情報はFlutterKaigi公式Xアカウントでもお知らせします(@FlutterKaigi)';
      case 'homePage.ticketWillBeOnSaleCard.button':
        return '公式Xアカウントへ';
      case 'homePage.prePurchaseWarningDialog.title':
        return 'チケット購入前の注意事項';
      case 'homePage.prePurchaseWarningDialog.accept':
        return '同意する';
      case 'homePage.prePurchaseWarningDialog.unaccept':
        return '同意しない';
      case 'homePage.tickets.variant.general':
        return '一般チケット';
      case 'homePage.tickets.variant.sessionSpeaker':
        return 'セッション登壇者チケット';
      case 'homePage.tickets.variant.sponsorSession':
        return 'スポンサーセッション登壇者チケット';
      case 'homePage.tickets.variant.sponsorInvitation':
        return 'スポンサー招待チケット';
      case 'homePage.tickets.variant.sponsorBooth':
        return 'スポンサーブースチケット';
      case 'homePage.tickets.variant.personalSponsor':
        return '個人スポンサー付き参加チケット';
      case 'homePage.tickets.buyTicket':
        return 'チケットを購入';
      case 'homePage.tickets.loginBeforeBuy':
        return 'チケットを購入・登録するためには、お手持ちのGoogleアカウントでログインしてください。';
      case 'homePage.tickets.ticketManagedByGoogleAccount':
        return '購入もしくは登録後に、チケットはGoogleアカウントに紐づいて管理されます。';
      case 'homePage.tickets.price':
        return ({required Object price}) => '¥${price}';
      case 'homePage.tickets.alreadyPurchasedCard.title':
        return 'チケットを購入いただきありがとうございます';
      case 'homePage.tickets.alreadyPurchasedCard.description':
        return 'あなたは既にチケットをお持ちです。チケットページから、チケットの確認・ネームプレートの編集を行ってください。';
      case 'homePage.tickets.alreadyPurchasedCard.button':
        return 'チケットページへ';
      case 'homePage.tickets.alreadyPurchasedCard.verifyError':
        return 'チケットをお持ちかどうかの確認中にエラーが発生しました。';
      case 'homePage.tickets.normal.name':
        return '一般チケット';
      case 'homePage.tickets.normal.description.0':
        return '**[一般チケットの特典]**';
      case 'homePage.tickets.normal.description.1':
        return '- **本編への参加**';
      case 'homePage.tickets.normal.description.2':
        return '- **懇親会への参加**';
      case 'homePage.tickets.normal.description.3':
        return '- **各種ノベルティ**';
      case 'homePage.tickets.invitation.description':
        return '招待コードまたはクーポンコードをお持ちの方はこちらに入力してください';
      case 'homePage.tickets.invitation.textBoxTitle':
        return '招待コード もしくは クーポンコード';
      case 'homePage.tickets.invitation.textBoxDescription':
        return 'コードを入力';
      case 'homePage.tickets.invitation.applyCodeButton':
        return 'コードを適用';
      case 'homePage.tickets.invitation.error.status404':
        return 'プロモーションコードが見つかりません';
      case 'homePage.tickets.invitation.error.status429':
        return 'リクエストが多過ぎます 数分後に再度お試しください';
      case 'homePage.tickets.invitation.error.status500':
        return 'サーバーでエラーが発生しました';
      case 'homePage.tickets.invitation.error.unknown':
        return '不明なエラーが発生しました';
      case 'homePage.tickets.invitation.validation.ok':
        return 'プロモーションコードが有効です';
      case 'homePage.tickets.invitation.validation.invalid':
        return 'プロモーションコードが無効です';
      case 'homePage.tickets.invitation.validation.nextPayment':
        return '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットを購入してください';
      case 'homePage.tickets.invitation.validation.nextConfirmOrder':
        return '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットの注文を確定してください';
      case 'homePage.tickets.invitation.validation.dialog.ok':
        return '決定';
      case 'homePage.tickets.invitation.validation.dialog.cancel':
        return 'キャンセル';
      case 'homePage.tickets.invitation.validation.invited.title':
        return '招待コードが正常に検証されました';
      case 'homePage.tickets.invitation.validation.invited.description':
        return '以下の情報を入力してください';
      case 'homePage.tickets.invitation.validation.invited.warning':
        return '「次へ」を押すと、情報は確定されます。変更するには、運営へお問い合わせください。';
      case 'homePage.tickets.invitation.validation.invited.sponsor':
        return '所属スポンサー';
      case 'homePage.tickets.invitation.validation.invited.session':
        return '登壇セッション';
      case 'homePage.tickets.invitation.validation.invited.next':
        return '次へ';
      case 'homePage.tickets.invitation.validation.invited.pleaseWaitForAMoment':
        return '少々お待ちください...';
      case 'homePage.tickets.personalSponsor.name':
        return '個人スポンサー付き参加チケット';
      case 'homePage.tickets.personalSponsor.description.0':
        return '- 個人スポンサー付き参加チケットは、一般チケットを内包します';
      case 'homePage.tickets.personalSponsor.description.1':
        return '';
      case 'homePage.tickets.personalSponsor.description.2':
        return '**[個人スポンサーの特典]**';
      case 'homePage.tickets.personalSponsor.description.3':
        return '- **前夜祭への参加**: 2024/11/20(水)に開催する前夜祭へ参加頂けます([詳細はこちら](https://medium.com/flutterkaigi/flutterkaigi-2024%E5%89%8D%E5%A4%9C%E7%A5%AD%E3%82%92%E9%96%8B%E5%82%AC%E3%81%97%E3%81%BE%E3%81%99-5e7ff7ba3947))';
      case 'homePage.tickets.personalSponsor.description.4':
        return '- **優先Viewing Area**: セッションルーム前方に優先エリアを設置';
      case 'homePage.tickets.personalSponsor.description.5':
        return '- **専用FlutterKaigiグッズ**';
      case 'homePage.tickets.personalSponsor.description.6':
        return '- **開会式でのメッセージ紹介**';
      case 'homePage.tickets.personalSponsor.description.7':
        return '- **Webサイトへのアイコン掲載**';
      case 'homePage.tickets.student.name':
        return '学割について';
      case 'homePage.tickets.student.description':
        return 'FlutterKaigi 2024当日に、学生(中学・高校・大学(短期大学,大学院を含む)・高等専門学校・専修学校・専門学校・職業訓練学校)の方は受付にて学生証を提示することによりチケット代金全額を返金致します。\n※返金は当日のみ有効です。また、一般チケットのみ対象となります。所属している教育機関が対象かどうか不明な場合は、運営にお問い合わせください。';
      case 'verifyPurchase.processing':
        return '購入処理中...';
      case 'verifyPurchase.processingDescription':
        return '購入記録とユーザを紐づけています。しばらくお待ちください。';
      case 'verifyPurchase.success':
        return '購入処理が完了しました!';
      case 'verifyPurchase.error':
        return 'チケットの購入処理中にエラーが発生しました';
      case 'verifyPurchase.errorDescription':
        return 'エラーが発生したため、購入処理が完了できませんでした。ページを再読み込みして再試行してください。';
      case 'verifyPurchase.contact':
        return '問題が解決しない場合は、運営にお問い合わせください';
      case 'authorization.alreadyLoggedInWithMailAddress':
        return ({required Object mailAddress}) => '${mailAddress} でログイン済みです';
      case 'authorization.logOut':
        return 'ログアウト';
      case 'authorization.logOutDialog.title':
        return 'ログアウトしますか？';
      case 'authorization.logOutDialog.description':
        return 'ログアウトすると、再度ログインするまでチケットの購入や登録ができなくなります。';
      case 'authorization.logOutDialog.cancel':
        return 'キャンセル';
      case 'authorization.logOutDialog.logout':
        return 'ログアウト';
      case 'footer.copyRight':
        return '@ FlutterKaigi 2024 実行委員会';
      case 'footer.googleCopyright.text0':
        return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
      case 'footer.googleCopyright.text1':
        return 'The Flutter name and the Flutter logo';
      case 'footer.googleCopyright.text2':
        return 'are trademarks of Google LLC.';
      case 'footer.codeOfConduct':
        return '行動規範';
      case 'footer.privacyPolicy':
        return 'プライバシーポリシー';
      case 'footer.contact':
        return 'お問い合わせ';
      case 'footer.license':
        return 'ライセンス';
      case 'error.network.status400':
        return 'リクエストが不正です';
      case 'error.network.status403':
        return 'リクエストが拒否されました';
      case 'error.network.status404':
        return 'リクエストが見つかりません';
      case 'error.network.status429':
        return 'リクエストが多すぎます';
      case 'error.network.status500':
        return 'サーバーでエラーが発生しました';
      case 'error.network.status503':
        return 'サーバーが過負荷状態です';
      case 'error.network.statusOther':
        return ({required Object statusCode}) =>
            'ネットワークエラーが発生しました (ステータスコード: ${statusCode})';
      case 'error.network.tryAgain':
        return '時間をおいて再度お試しください';
      case 'error.network.unknown':
        return '不明なエラーが発生しました';
      case 'ticketPage.thankYouCard.title':
        return 'チケットを購入いただき、ありがとうございます!';
      case 'ticketPage.thankYouCard.description':
        return ({required Object type}) => '${type} をお持ちです';
      case 'ticketPage.warningForSpeakerProfile.title':
        return '登壇者のプロフィール情報についての注意';
      case 'ticketPage.warningForSpeakerProfile.description':
        return '登壇者のプロフィールは、FlutterKaigi公式サイトに公開されます。注意してください';
      case 'ticketPage.warningForPersonalSponsor.title':
        return '個人スポンサーのプロフィール情報についての注意';
      case 'ticketPage.warningForPersonalSponsor.description':
        return 'あなたは個人スポンサーのチケットをお持ちです。FlutterKaigi公式サイトにプロフィール情報を掲載するかどうかを選ぶことができます\nプロフィールの掲載は10月下旬を予定しています';
      case 'ticketPage.warningForPersonalSponsor.buttons.publishProfile':
        return 'プロフィールを公開する';
      case 'ticketPage.warningForPersonalSponsor.buttons.doNotPublishProfile':
        return 'プロフィールを非公開にする';
      case 'ticketPage.informationForProfileEdit.title':
        return 'プロフィール情報について';
      case 'ticketPage.informationForProfileEdit.description':
        return 'ここで入力したプロフィール情報は、FlutterKaigi当日のネームプレートに印刷されます。\n名前・ひとこと・Xアカウント・プロフィール画像を編集できます。';
      case 'ticketPage.profileEditRestriction.title':
        return 'プロフィール編集の注意';
      case 'ticketPage.profileEditRestriction.description':
        return '- プロフィール画像は、Googleアカウントの画像もしくはアップロードした画像のみ使用できます。\n- プロフィールは、**2024年11月12日(火) 22:00** まで編集可能です。印刷の関係により、**それ以降の編集はできません。**';
      case 'ticketPage.designMayBeChanged':
        return '※FlutterKaigi 2024当日に配布するネームプレートのデザインは、変更される可能性があります。';
      case 'ticketPage.editFields.dialog.ok':
        return '決定';
      case 'ticketPage.editFields.dialog.cancel':
        return 'キャンセル';
      case 'ticketPage.editFields.name.title':
        return '名前';
      case 'ticketPage.editFields.name.description':
        return '名前を入力してください。(20文字以内 特殊文字は使用できません)';
      case 'ticketPage.editFields.name.validation.tooLong':
        return '名前は20文字以内で入力してください';
      case 'ticketPage.editFields.name.validation.invalidCharacters':
        return '名前には特殊文字は使用できません';
      case 'ticketPage.editFields.name.validation.empty':
        return '名前を入力してください';
      case 'ticketPage.editFields.comment.title':
        return 'ひとこと';
      case 'ticketPage.editFields.comment.description':
        return 'ひとことを入力してください。(40文字以内 特殊文字は使用できません)';
      case 'ticketPage.editFields.comment.validation.tooLong':
        return 'ひとことは40文字以内で入力してください';
      case 'ticketPage.editFields.comment.validation.invalidCharacters':
        return 'ひとことには特殊文字は使用できません';
      case 'ticketPage.editFields.comment.validation.empty':
        return 'ひとことを入力してください';
      case 'ticketPage.editFields.xAccount.title':
        return 'Xアカウント';
      case 'ticketPage.editFields.xAccount.description':
        return 'Xアカウントを入力してください。\n※Xアカウントは、@は含めず入力してください。(例: @FlutterKaigi -> FlutterKaigi)';
      case 'ticketPage.editFields.xAccount.placeholder':
        return 'Xアカウント';
      case 'ticketPage.editFields.xAccount.deleteButton':
        return 'Xアカウントの記載を削除';
      case 'ticketPage.editFields.xAccount.unknown':
        return '未設定';
      case 'ticketPage.editFields.xAccount.validation.tooLong':
        return 'Xアカウントは40文字以内で入力してください';
      case 'ticketPage.editFields.xAccount.validation.invalidCharacters':
        return 'Xアカウントには英数字以外の文字は使用できません';
      case 'ticketPage.editFields.avatar.title':
        return 'プロフィール画像';
      case 'ticketPage.editFields.avatar.description':
        return 'プロフィール画像をアップロードしてください。\n※アップロードできる画像は、PNG, JPG形式の画像のみです。';
      case 'ticketPage.editFields.avatar.uploadButton':
        return '画像を選択';
      case 'ticketPage.editFields.avatar.removeButton':
        return 'デフォルトに戻す(Googleアカウントの画像になります)';
      case 'ticketPage.editFields.avatar.uploadSuccess':
        return 'プロフィール画像をアップロードしました';
      case 'ticketPage.editFields.avatar.deleteSuccess':
        return 'プロフィール画像をデフォルトに戻しました';
      case 'ticketPage.editFields.avatar.uploadError':
        return 'プロフィール画像のアップロードに失敗しました';
      case 'ticketPage.editFields.avatar.deleteError':
        return 'プロフィール画像をデフォルトに戻す最中にエラーが発生しました';
      case 'ticketPage.editFields.avatar.crop.title':
        return '画像を切り取ってください';
      case 'ticketPage.editFields.avatar.crop.cropButton':
        return '切り取る';
      case 'ticketPage.editFields.isAdult.title':
        return 'FlutterKaigi 2024当日に成人していますか?';
      case 'ticketPage.editFields.isAdult.description':
        return '懇親会におけるアルコールの提供は、成人の方に限ります。';
      case 'ticketPage.editFields.isAdult.yes':
        return 'はい';
      case 'ticketPage.editFields.isAdult.no':
        return 'いいえ';
      case 'ticketPage.editFields.isAdult.ok':
        return 'OK';
      case 'ticketPage.editFields.results.success':
        return 'プロフィール情報を更新しました';
      case 'ticketPage.editFields.results.error':
        return 'プロフィール情報の更新に失敗しました';
      default:
        return null;
    }
  }
}

extension on _StringsEn {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'flutterKaigi':
        return 'FlutterKaigi';
      case 'year':
        return '2024';
      case 'officialSite':
        return 'Official Site';
      case 'ticketSite':
        return 'Ticket Site';
      case 'homePage.titleAndLogo.date':
        return 'November\n21(Thu) - 22(Fri)';
      case 'homePage.titleAndLogo.location':
        return 'Ariake Central Tower & Conference';
      case 'homePage.ticketWillBeOnSaleCard.title':
        return 'Tickets are not on sale yet';
      case 'homePage.ticketWillBeOnSaleCard.description':
        return 'Ticket sales will start on October 7 (Monday). Please wait a moment.\n\nLatest information will also be announced on the FlutterKaigi official X account (@FlutterKaigi).';
      case 'homePage.ticketWillBeOnSaleCard.button':
        return 'Go to the FlutterKaigi official X account';
      case 'homePage.prePurchaseWarningDialog.title':
        return 'Note on Pre-Purchase';
      case 'homePage.prePurchaseWarningDialog.accept':
        return 'Accept';
      case 'homePage.prePurchaseWarningDialog.unaccept':
        return 'Unaccept';
      case 'homePage.tickets.variant.general':
        return 'General Ticket';
      case 'homePage.tickets.variant.sessionSpeaker':
        return 'Session Speaker Ticket';
      case 'homePage.tickets.variant.sponsorSession':
        return 'Sponsor Session Speaker Ticket';
      case 'homePage.tickets.variant.sponsorInvitation':
        return 'Sponsor Invitation Ticket';
      case 'homePage.tickets.variant.sponsorBooth':
        return 'Sponsor Booth Ticket';
      case 'homePage.tickets.variant.personalSponsor':
        return 'Personal Sponsor Ticket';
      case 'homePage.tickets.buyTicket':
        return 'Buy Ticket';
      case 'homePage.tickets.loginBeforeBuy':
        return 'Please login with your Google account to buy or register a ticket.';
      case 'homePage.tickets.ticketManagedByGoogleAccount':
        return 'After purchase or registration, tickets will be managed by your Google account.';
      case 'homePage.tickets.alreadyPurchasedCard.title':
        return 'Thank you for purchasing a ticket!';
      case 'homePage.tickets.alreadyPurchasedCard.description':
        return 'You already have a ticket. Please check your ticket and edit your name card from the ticket page.';
      case 'homePage.tickets.alreadyPurchasedCard.button':
        return 'Ticket Page';
      case 'homePage.tickets.alreadyPurchasedCard.verifyError':
        return 'An error occurred while verifying whether you have a ticket.';
      case 'homePage.tickets.normal.name':
        return 'Normal Ticket';
      case 'homePage.tickets.normal.description.0':
        return '**[Normal Ticket Benefits]**';
      case 'homePage.tickets.normal.description.1':
        return '- **Access to the main event**';
      case 'homePage.tickets.normal.description.2':
        return '- **Access to the party**';
      case 'homePage.tickets.normal.description.3':
        return '- **Various Merchandise**';
      case 'homePage.tickets.invitation.description':
        return 'If you have an invitation code or coupon code, please enter it here.';
      case 'homePage.tickets.invitation.textBoxTitle':
        return 'Invitation Code or Coupon Code';
      case 'homePage.tickets.invitation.textBoxDescription':
        return 'Enter the code';
      case 'homePage.tickets.invitation.applyCodeButton':
        return 'Apply Code';
      case 'homePage.tickets.invitation.validation.ok':
        return 'Your code is valid!';
      case 'homePage.tickets.invitation.validation.invalid':
        return 'Your code is invalid.';
      case 'homePage.tickets.invitation.validation.nextPayment':
        return 'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and purchase the ticket.';
      case 'homePage.tickets.invitation.validation.nextConfirmOrder':
        return 'By pressing OK, you will be redirected to Stripe. Please confirm that the promotion code is applied and confirm the order.';
      case 'homePage.tickets.invitation.validation.dialog.ok':
        return 'OK';
      case 'homePage.tickets.invitation.validation.dialog.cancel':
        return 'Cancel';
      case 'homePage.tickets.invitation.validation.invited.title':
        return 'Invitation code has been successfully validated';
      case 'homePage.tickets.invitation.validation.invited.description':
        return 'Please enter the following information';
      case 'homePage.tickets.invitation.validation.invited.warning':
        return 'Pressing "Next" will finalize the information. If you need to make changes, please contact the organizers.';
      case 'homePage.tickets.invitation.validation.invited.sponsor':
        return 'Sponsor you are member of';
      case 'homePage.tickets.invitation.validation.invited.session':
        return 'Session you will speak at';
      case 'homePage.tickets.invitation.validation.invited.next':
        return 'Next';
      case 'homePage.tickets.invitation.validation.invited.pleaseWaitForAMoment':
        return 'Please wait a moment...';
      case 'homePage.tickets.personalSponsor.name':
        return 'Personal Sponsor Ticket';
      case 'homePage.tickets.personalSponsor.description.0':
        return '- Personal Sponsor Ticket includes a general ticket';
      case 'homePage.tickets.personalSponsor.description.1':
        return '';
      case 'homePage.tickets.personalSponsor.description.2':
        return '**[Personal Sponsor Benefits]**';
      case 'homePage.tickets.personalSponsor.description.3':
        return '- **Pre-Party Access**: Access to the pre-party on November 20 (Wednesday) ([details here](https://medium.com/flutterkaigi/flutterkaigi-2024%E5%89%8D%E5%A4%9C%E7%A5%AD%E3%82%92%E9%96%8B%E5%82%AC%E3%81%97%E3%81%BE%E3%81%99-5e7ff7ba3947))';
      case 'homePage.tickets.personalSponsor.description.4':
        return '- **Exclusive Viewing Area**: Dedicated area in front of the session room';
      case 'homePage.tickets.personalSponsor.description.5':
        return '- **Exclusive FlutterKaigi Merchandise**';
      case 'homePage.tickets.personalSponsor.description.6':
        return '- **Introduction at the Opening Ceremony**';
      case 'homePage.tickets.personalSponsor.description.7':
        return '- **Icon on the Website**';
      case 'homePage.tickets.student.name':
        return 'Student Discount';
      case 'homePage.tickets.student.description':
        return 'If you are a student (Junior High School, High School, University(Including Junior College, Graduate School), Technical College, College of Technology(KOSEN), Specialized School, Vocational School)on the day of FlutterKaigi 2024, we will refund the full ticket price by showing your student ID at time of reception.\n※ Refunds are only valid on the day of the event. Only general tickets are eligible. If you are unsure whether your educational institution is eligible, please contact the organizers.';
      case 'verifyPurchase.processing':
        return 'Verifying purchase...';
      case 'verifyPurchase.processingDescription':
        return 'Linking your purchase record and user. Please wait a moment...';
      case 'verifyPurchase.success':
        return 'Purchase verification completed';
      case 'verifyPurchase.error':
        return 'An error occurred while verifying the purchase of the ticket.';
      case 'verifyPurchase.errorDescription':
        return 'The purchase could not be completed due to an error. Please refresh the page and try again.';
      case 'verifyPurchase.contact':
        return 'If the problem persists, please contact the organizers.';
      case 'authorization.alreadyLoggedInWithMailAddress':
        return ({required Object mailAddress}) =>
            'Already logged in with ${mailAddress}';
      case 'authorization.logOut':
        return 'Log Out';
      case 'authorization.logOutDialog.title':
        return 'Are you sure you want to log out?';
      case 'authorization.logOutDialog.description':
        return 'Logging out will prevent you from purchasing or registering tickets until you log in again.';
      case 'authorization.logOutDialog.cancel':
        return 'Cancel';
      case 'authorization.logOutDialog.logout':
        return 'Log Out';
      case 'footer.copyRight':
        return '@ FlutterKaigi 2024 Organizing Committee';
      case 'footer.googleCopyright.text0':
        return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
      case 'footer.googleCopyright.text1':
        return 'The Flutter name and the Flutter logo';
      case 'footer.googleCopyright.text2':
        return 'are trademarks of Google LLC.';
      case 'footer.codeOfConduct':
        return 'Code of Conduct';
      case 'footer.privacyPolicy':
        return 'Privacy Policy';
      case 'footer.contact':
        return 'Contact';
      case 'footer.license':
        return 'License';
      case 'error.network.status400':
        return 'Bad Request';
      case 'error.network.status403':
        return 'Forbidden';
      case 'error.network.status404':
        return 'Not Found';
      case 'error.network.status429':
        return 'Too Many Requests';
      case 'error.network.status500':
        return 'Internal Server Error';
      case 'error.network.status503':
        return 'Service Unavailable';
      case 'error.network.statusOther':
        return ({required Object statusCode}) =>
            'A network error occurred (Status Code: ${statusCode})';
      case 'error.network.tryAgain':
        return 'Please try again later.';
      case 'error.network.unknown':
        return 'An unknown error occurred.';
      case 'ticketPage.thankYouCard.title':
        return 'Thank you for purchasing a ticket!';
      case 'ticketPage.thankYouCard.description':
        return ({required Object type}) => 'You have a ${type}.';
      case 'ticketPage.warningForSpeakerProfile.title':
        return 'Note on Speaker Profile';
      case 'ticketPage.warningForSpeakerProfile.description':
        return 'Speaker profiles will be published on the FlutterKaigi official site. Please be careful.';
      case 'ticketPage.warningForPersonalSponsor.title':
        return 'Note on Personal Sponsor Profile';
      case 'ticketPage.warningForPersonalSponsor.description':
        return 'You have a personal sponsor ticket. You can choose to publish your profile on the FlutterKaigi official site.\nThe profile will be published in mid-October.';
      case 'ticketPage.warningForPersonalSponsor.buttons.publishProfile':
        return 'Publish Profile';
      case 'ticketPage.warningForPersonalSponsor.buttons.doNotPublishProfile':
        return 'DO NOT Publish Profile';
      case 'ticketPage.informationForProfileEdit.title':
        return 'Note on Profile Information';
      case 'ticketPage.informationForProfileEdit.description':
        return 'The profile information you enter here will be printed on your name card at FlutterKaigi.\nYou can edit your name, comment, X account, and profile image.';
      case 'ticketPage.profileEditRestriction.title':
        return 'Note on Profile Editing';
      case 'ticketPage.profileEditRestriction.description':
        return '- Profile images can only be used with your Google account image or uploaded image.\n- You can edit your profile until **Nov 12 (Tue) 22:00 JST**. After that, you will **not be able to edit your profile** due to printing reasons.';
      case 'ticketPage.designMayBeChanged':
        return '※The design of the name card may be changed on the day of FlutterKaigi 2024.';
      case 'ticketPage.editFields.dialog.ok':
        return 'OK';
      case 'ticketPage.editFields.dialog.cancel':
        return 'Cancel';
      case 'ticketPage.editFields.name.title':
        return 'Name';
      case 'ticketPage.editFields.name.description':
        return 'Please enter your name. (20 characters or less, no special characters allowed)';
      case 'ticketPage.editFields.name.validation.tooLong':
        return 'Name must be 20 characters or less';
      case 'ticketPage.editFields.name.validation.invalidCharacters':
        return 'Name must be alphanumeric';
      case 'ticketPage.editFields.comment.title':
        return 'Comment';
      case 'ticketPage.editFields.comment.description':
        return 'Please enter your comment. (40 characters or less, no special characters allowed)';
      case 'ticketPage.editFields.comment.validation.tooLong':
        return 'Comment must be 40 characters or less';
      case 'ticketPage.editFields.comment.validation.invalidCharacters':
        return 'Comment must be alphanumeric';
      case 'ticketPage.editFields.xAccount.title':
        return 'X Account';
      case 'ticketPage.editFields.xAccount.description':
        return 'Please enter your X account. (No @ symbol allowed)';
      case 'ticketPage.editFields.xAccount.placeholder':
        return 'X Account';
      case 'ticketPage.editFields.xAccount.deleteButton':
        return 'Delete X Account Entry';
      case 'ticketPage.editFields.xAccount.unknown':
        return 'Unknown';
      case 'ticketPage.editFields.xAccount.validation.tooLong':
        return 'X Account must be 40 characters or less';
      case 'ticketPage.editFields.xAccount.validation.invalidCharacters':
        return 'X Account must be alphanumeric';
      case 'ticketPage.editFields.avatar.title':
        return 'Profile Image';
      case 'ticketPage.editFields.avatar.description':
        return 'Please upload your profile image. (PNG, JPG format)';
      case 'ticketPage.editFields.avatar.uploadButton':
        return 'Upload Image';
      case 'ticketPage.editFields.avatar.removeButton':
        return 'Reset to Default (Google Account Image)';
      case 'ticketPage.editFields.avatar.uploadSuccess':
        return 'Profile image uploaded successfully';
      case 'ticketPage.editFields.avatar.deleteSuccess':
        return 'Profile image reset to default successfully';
      case 'ticketPage.editFields.avatar.uploadError':
        return 'Profile image upload failed';
      case 'ticketPage.editFields.avatar.deleteError':
        return 'Profile image reset to default failed';
      case 'ticketPage.editFields.avatar.crop.title':
        return 'Please crop the image';
      case 'ticketPage.editFields.avatar.crop.cropButton':
        return 'Crop';
      case 'ticketPage.editFields.isAdult.title':
        return 'Are you 20 or older on November 21, 2024?';
      case 'ticketPage.editFields.isAdult.description':
        return 'Alcohol will be served at the party for 20 or older attendees.';
      case 'ticketPage.editFields.isAdult.yes':
        return 'Yes';
      case 'ticketPage.editFields.isAdult.no':
        return 'No';
      case 'ticketPage.editFields.isAdult.ok':
        return 'OK';
      case 'ticketPage.editFields.results.success':
        return 'Profile information updated successfully';
      case 'ticketPage.editFields.results.error':
        return 'Profile information update failed';
      default:
        return null;
    }
  }
}
