///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsJa = Translations; // ignore: unused_element

class Translations implements BaseTranslations<AppLocale, Translations> {
  /// Returns the current translations of the given [context].
  ///
  /// Usage:
  /// final t = Translations.of(context);
  static Translations of(BuildContext context) =>
      InheritedLocaleData.of<AppLocale, Translations>(context).translations;

  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  Translations(
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
  late final TranslationsHomePageJa homePage =
      TranslationsHomePageJa.internal(_root);
  late final TranslationsVerifyPurchaseJa verifyPurchase =
      TranslationsVerifyPurchaseJa.internal(_root);
  late final TranslationsAuthorizationJa authorization =
      TranslationsAuthorizationJa.internal(_root);
  late final TranslationsFooterJa footer = TranslationsFooterJa.internal(_root);
  late final TranslationsErrorJa error = TranslationsErrorJa.internal(_root);
  late final TranslationsTicketPageJa ticketPage =
      TranslationsTicketPageJa.internal(_root);
}

// Path: homePage
class TranslationsHomePageJa {
  TranslationsHomePageJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsHomePageTitleAndLogoJa titleAndLogo =
      TranslationsHomePageTitleAndLogoJa.internal(_root);
  late final TranslationsHomePageTicketWillBeOnSaleCardJa
      ticketWillBeOnSaleCard =
      TranslationsHomePageTicketWillBeOnSaleCardJa.internal(_root);
  late final TranslationsHomePagePrePurchaseWarningDialogJa
      prePurchaseWarningDialog =
      TranslationsHomePagePrePurchaseWarningDialogJa.internal(_root);
  late final TranslationsHomePageTicketsJa tickets =
      TranslationsHomePageTicketsJa.internal(_root);
}

// Path: verifyPurchase
class TranslationsVerifyPurchaseJa {
  TranslationsVerifyPurchaseJa.internal(this._root);

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
class TranslationsAuthorizationJa {
  TranslationsAuthorizationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String alreadyLoggedInWithMailAddress({required Object mailAddress}) =>
      '${mailAddress} でログイン済みです';
  String get logOut => 'ログアウト';
  late final TranslationsAuthorizationLogOutDialogJa logOutDialog =
      TranslationsAuthorizationLogOutDialogJa.internal(_root);
}

// Path: footer
class TranslationsFooterJa {
  TranslationsFooterJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get copyRight => '@ FlutterKaigi 2024 実行委員会';
  late final TranslationsFooterGoogleCopyrightJa googleCopyright =
      TranslationsFooterGoogleCopyrightJa.internal(_root);
  String get codeOfConduct => '行動規範';
  String get privacyPolicy => 'プライバシーポリシー';
  String get contact => 'お問い合わせ';
  String get license => 'ライセンス';
}

// Path: error
class TranslationsErrorJa {
  TranslationsErrorJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsErrorNetworkJa network =
      TranslationsErrorNetworkJa.internal(_root);
}

// Path: ticketPage
class TranslationsTicketPageJa {
  TranslationsTicketPageJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsTicketPageThankYouCardJa thankYouCard =
      TranslationsTicketPageThankYouCardJa.internal(_root);
  late final TranslationsTicketPageWarningForSpeakerProfileJa
      warningForSpeakerProfile =
      TranslationsTicketPageWarningForSpeakerProfileJa.internal(_root);
  late final TranslationsTicketPageWarningForPersonalSponsorJa
      warningForPersonalSponsor =
      TranslationsTicketPageWarningForPersonalSponsorJa.internal(_root);
  late final TranslationsTicketPageInformationForProfileEditJa
      informationForProfileEdit =
      TranslationsTicketPageInformationForProfileEditJa.internal(_root);
  late final TranslationsTicketPageProfileEditRestrictionJa
      profileEditRestriction =
      TranslationsTicketPageProfileEditRestrictionJa.internal(_root);
  String get designMayBeChanged =>
      '※FlutterKaigi 2024当日に配布するネームプレートのデザインは、変更される可能性があります。';
  late final TranslationsTicketPageEditFieldsJa editFields =
      TranslationsTicketPageEditFieldsJa.internal(_root);
  late final TranslationsTicketPageQrCodeJa qrCode =
      TranslationsTicketPageQrCodeJa.internal(_root);
  late final TranslationsTicketPageEntranceInformationJa entranceInformation =
      TranslationsTicketPageEntranceInformationJa.internal(_root);
}

// Path: homePage.titleAndLogo
class TranslationsHomePageTitleAndLogoJa {
  TranslationsHomePageTitleAndLogoJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get date => 'November\n21(Thu) - 22(Fri)';
  String get location => '有明セントラルタワーホール&カンファレンス';
}

// Path: homePage.ticketWillBeOnSaleCard
class TranslationsHomePageTicketWillBeOnSaleCardJa {
  TranslationsHomePageTicketWillBeOnSaleCardJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットはまだ販売されていません';
  String get description =>
      'チケットの販売は、2024年10月7日(月) 10:00 JST から開始されます。\nそれまでしばらくお待ちください。\n\n最新情報はFlutterKaigi公式Xアカウントでもお知らせします(@FlutterKaigi)';
  String get button => '公式Xアカウントへ';
}

// Path: homePage.prePurchaseWarningDialog
class TranslationsHomePagePrePurchaseWarningDialogJa {
  TranslationsHomePagePrePurchaseWarningDialogJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケット購入前の注意事項';
  String get accept => '同意する';
  String get unaccept => '同意しない';
}

// Path: homePage.tickets
class TranslationsHomePageTicketsJa {
  TranslationsHomePageTicketsJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsHomePageTicketsVariantJa variant =
      TranslationsHomePageTicketsVariantJa.internal(_root);
  String get buyTicket => 'チケットを購入';
  String get loginBeforeBuy => 'チケットを購入・登録するためには、お手持ちのGoogleアカウントでログインしてください。';
  String get ticketManagedByGoogleAccount =>
      '購入もしくは登録後に、チケットはGoogleアカウントに紐づいて管理されます。';
  String price({required Object price}) => '¥${price}';
  late final TranslationsHomePageTicketsAlreadyPurchasedCardJa
      alreadyPurchasedCard =
      TranslationsHomePageTicketsAlreadyPurchasedCardJa.internal(_root);
  late final TranslationsHomePageTicketsNormalJa normal =
      TranslationsHomePageTicketsNormalJa.internal(_root);
  late final TranslationsHomePageTicketsInvitationJa invitation =
      TranslationsHomePageTicketsInvitationJa.internal(_root);
  late final TranslationsHomePageTicketsPersonalSponsorJa personalSponsor =
      TranslationsHomePageTicketsPersonalSponsorJa.internal(_root);
  late final TranslationsHomePageTicketsStudentJa student =
      TranslationsHomePageTicketsStudentJa.internal(_root);
}

// Path: authorization.logOutDialog
class TranslationsAuthorizationLogOutDialogJa {
  TranslationsAuthorizationLogOutDialogJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'ログアウトしますか？';
  String get description => 'ログアウトすると、再度ログインするまでチケットの購入や登録ができなくなります。';
  String get cancel => 'キャンセル';
  String get logout => 'ログアウト';
}

// Path: footer.googleCopyright
class TranslationsFooterGoogleCopyrightJa {
  TranslationsFooterGoogleCopyrightJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get text0 =>
      'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
  String get text1 => 'The Flutter name and the Flutter logo';
  String get text2 => 'are trademarks of Google LLC.';
}

// Path: error.network
class TranslationsErrorNetworkJa {
  TranslationsErrorNetworkJa.internal(this._root);

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
class TranslationsTicketPageThankYouCardJa {
  TranslationsTicketPageThankYouCardJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットを購入いただき、ありがとうございます!';
  String description({required Object type}) => '${type} をお持ちです';
}

// Path: ticketPage.warningForSpeakerProfile
class TranslationsTicketPageWarningForSpeakerProfileJa {
  TranslationsTicketPageWarningForSpeakerProfileJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '登壇者のプロフィール情報についての注意';
  String get description => '登壇者のプロフィールは、FlutterKaigi公式サイトに公開されます。注意してください';
}

// Path: ticketPage.warningForPersonalSponsor
class TranslationsTicketPageWarningForPersonalSponsorJa {
  TranslationsTicketPageWarningForPersonalSponsorJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '個人スポンサーのプロフィール情報についての注意';
  String get description =>
      'あなたは個人スポンサーのチケットをお持ちです。FlutterKaigi公式サイトにプロフィール情報を掲載するかどうかを選ぶことができます\nプロフィールの掲載は10月下旬を予定しています';
  late final TranslationsTicketPageWarningForPersonalSponsorButtonsJa buttons =
      TranslationsTicketPageWarningForPersonalSponsorButtonsJa.internal(_root);
}

// Path: ticketPage.informationForProfileEdit
class TranslationsTicketPageInformationForProfileEditJa {
  TranslationsTicketPageInformationForProfileEditJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'プロフィール情報について';
  String get description =>
      'ここで入力したプロフィール情報は、FlutterKaigi当日のネームプレートに印刷されます。\n名前・ひとこと・Xアカウント・プロフィール画像を編集できます。';
}

// Path: ticketPage.profileEditRestriction
class TranslationsTicketPageProfileEditRestrictionJa {
  TranslationsTicketPageProfileEditRestrictionJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'プロフィール編集の注意';
  String get description =>
      '- プロフィール画像は、Googleアカウントの画像もしくはアップロードした画像のみ使用できます。\n- プロフィールは、**2024年11月12日(火) 22:00** まで編集可能です。印刷の関係により、**それ以降の編集はできません。**';
}

// Path: ticketPage.editFields
class TranslationsTicketPageEditFieldsJa {
  TranslationsTicketPageEditFieldsJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  late final TranslationsTicketPageEditFieldsDialogJa dialog =
      TranslationsTicketPageEditFieldsDialogJa.internal(_root);
  late final TranslationsTicketPageEditFieldsNameJa name =
      TranslationsTicketPageEditFieldsNameJa.internal(_root);
  late final TranslationsTicketPageEditFieldsCommentJa comment =
      TranslationsTicketPageEditFieldsCommentJa.internal(_root);
  late final TranslationsTicketPageEditFieldsXAccountJa xAccount =
      TranslationsTicketPageEditFieldsXAccountJa.internal(_root);
  late final TranslationsTicketPageEditFieldsAvatarJa avatar =
      TranslationsTicketPageEditFieldsAvatarJa.internal(_root);
  late final TranslationsTicketPageEditFieldsIsAdultJa isAdult =
      TranslationsTicketPageEditFieldsIsAdultJa.internal(_root);
  late final TranslationsTicketPageEditFieldsResultsJa results =
      TranslationsTicketPageEditFieldsResultsJa.internal(_root);
}

// Path: ticketPage.qrCode
class TranslationsTicketPageQrCodeJa {
  TranslationsTicketPageQrCodeJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットQRコード';
  String get description =>
      'このQRコードは、FlutterKaigi 2024当日の受付で使用します。\n当日は、このQRコードをスタッフにご提示ください。';
  String get showWalletQr => 'QRコードで別の端末にチケットを追加';
  String get walletQrTitle => 'Walletに追加';
  String get walletQrDescription =>
      'iPhone/AndroidでこのQRコードを読み取ると、ウォレットアプリにチケットを追加できます';
  String get close => '閉じる';
  String get ticketId => 'チケットID';
  String get sectionId => 'ネームプレート 区画ID';
}

// Path: ticketPage.entranceInformation
class TranslationsTicketPageEntranceInformationJa {
  TranslationsTicketPageEntranceInformationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '入場時の情報';
  List<String> get description => [
        'FlutterKaigi 2024開催までの間に、このページに入場用QRコードが表示されます。',
        '入場時は、そのQRコードをスタッフに見せてください。',
      ];
}

// Path: homePage.tickets.variant
class TranslationsHomePageTicketsVariantJa {
  TranslationsHomePageTicketsVariantJa.internal(this._root);

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
class TranslationsHomePageTicketsAlreadyPurchasedCardJa {
  TranslationsHomePageTicketsAlreadyPurchasedCardJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'チケットを購入いただきありがとうございます';
  String get description =>
      'あなたは既にチケットをお持ちです。チケットページから、チケットの確認・ネームプレートの編集を行ってください。';
  String get button => 'チケットページへ';
  String get verifyError => 'チケットをお持ちかどうかの確認中にエラーが発生しました。';
}

// Path: homePage.tickets.normal
class TranslationsHomePageTicketsNormalJa {
  TranslationsHomePageTicketsNormalJa.internal(this._root);

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
class TranslationsHomePageTicketsInvitationJa {
  TranslationsHomePageTicketsInvitationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get description => '招待コードまたはクーポンコードをお持ちの方はこちらに入力してください';
  String get textBoxTitle => '招待コード もしくは クーポンコード';
  String get textBoxDescription => 'コードを入力';
  String get applyCodeButton => 'コードを適用';
  late final TranslationsHomePageTicketsInvitationErrorJa error =
      TranslationsHomePageTicketsInvitationErrorJa.internal(_root);
  late final TranslationsHomePageTicketsInvitationValidationJa validation =
      TranslationsHomePageTicketsInvitationValidationJa.internal(_root);
}

// Path: homePage.tickets.personalSponsor
class TranslationsHomePageTicketsPersonalSponsorJa {
  TranslationsHomePageTicketsPersonalSponsorJa.internal(this._root);

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
class TranslationsHomePageTicketsStudentJa {
  TranslationsHomePageTicketsStudentJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get name => '学割について';
  String get description =>
      'FlutterKaigi 2024当日に、学生(中学・高校・大学(短期大学,大学院を含む)・高等専門学校・専修学校・専門学校・職業訓練学校)の方は受付にて学生証を提示することによりチケット代金全額を返金致します。\n※返金は当日のみ有効です。また、一般チケットのみ対象となります。所属している教育機関が対象かどうか不明な場合は、運営にお問い合わせください。';
}

// Path: ticketPage.warningForPersonalSponsor.buttons
class TranslationsTicketPageWarningForPersonalSponsorButtonsJa {
  TranslationsTicketPageWarningForPersonalSponsorButtonsJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get publishProfile => 'プロフィールを公開する';
  String get doNotPublishProfile => 'プロフィールを非公開にする';
}

// Path: ticketPage.editFields.dialog
class TranslationsTicketPageEditFieldsDialogJa {
  TranslationsTicketPageEditFieldsDialogJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => '決定';
  String get cancel => 'キャンセル';
}

// Path: ticketPage.editFields.name
class TranslationsTicketPageEditFieldsNameJa {
  TranslationsTicketPageEditFieldsNameJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '名前';
  String get description => '名前を入力してください。(20文字以内 特殊文字は使用できません)';
  late final TranslationsTicketPageEditFieldsNameValidationJa validation =
      TranslationsTicketPageEditFieldsNameValidationJa.internal(_root);
}

// Path: ticketPage.editFields.comment
class TranslationsTicketPageEditFieldsCommentJa {
  TranslationsTicketPageEditFieldsCommentJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'ひとこと';
  String get description => 'ひとことを入力してください。(40文字以内 特殊文字は使用できません)';
  late final TranslationsTicketPageEditFieldsCommentValidationJa validation =
      TranslationsTicketPageEditFieldsCommentValidationJa.internal(_root);
}

// Path: ticketPage.editFields.xAccount
class TranslationsTicketPageEditFieldsXAccountJa {
  TranslationsTicketPageEditFieldsXAccountJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Xアカウント';
  String get description =>
      'Xアカウントを入力してください。\n※Xアカウントは、@は含めず入力してください。(例: @FlutterKaigi -> FlutterKaigi)';
  String get placeholder => 'Xアカウント';
  String get deleteButton => 'Xアカウントの記載を削除';
  String get unknown => '未設定';
  late final TranslationsTicketPageEditFieldsXAccountValidationJa validation =
      TranslationsTicketPageEditFieldsXAccountValidationJa.internal(_root);
}

// Path: ticketPage.editFields.avatar
class TranslationsTicketPageEditFieldsAvatarJa {
  TranslationsTicketPageEditFieldsAvatarJa.internal(this._root);

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
  late final TranslationsTicketPageEditFieldsAvatarCropJa crop =
      TranslationsTicketPageEditFieldsAvatarCropJa.internal(_root);
}

// Path: ticketPage.editFields.isAdult
class TranslationsTicketPageEditFieldsIsAdultJa {
  TranslationsTicketPageEditFieldsIsAdultJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'FlutterKaigi 2024当日に成人していますか?';
  String get description => '懇親会におけるアルコールの提供は、成人の方に限ります。';
  String get yes => 'はい';
  String get no => 'いいえ';
  String get ok => 'OK';
}

// Path: ticketPage.editFields.results
class TranslationsTicketPageEditFieldsResultsJa {
  TranslationsTicketPageEditFieldsResultsJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get success => 'プロフィール情報を更新しました';
  String get error => 'プロフィール情報の更新に失敗しました';
}

// Path: homePage.tickets.invitation.error
class TranslationsHomePageTicketsInvitationErrorJa {
  TranslationsHomePageTicketsInvitationErrorJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get status404 => 'プロモーションコードが見つかりません';
  String get status429 => 'リクエストが多過ぎます 数分後に再度お試しください';
  String get status500 => 'サーバーでエラーが発生しました';
  String get unknown => '不明なエラーが発生しました';
}

// Path: homePage.tickets.invitation.validation
class TranslationsHomePageTicketsInvitationValidationJa {
  TranslationsHomePageTicketsInvitationValidationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => 'プロモーションコードが有効です';
  String get invalid => 'プロモーションコードが無効です';
  String get nextPayment =>
      '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットを購入してください';
  String get nextConfirmOrder =>
      '決定を押すと、Stripeへ遷移します。プロモーションコードが適用されていることを確認してチケットの注文を確定してください';
  late final TranslationsHomePageTicketsInvitationValidationDialogJa dialog =
      TranslationsHomePageTicketsInvitationValidationDialogJa.internal(_root);
  late final TranslationsHomePageTicketsInvitationValidationInvitedJa invited =
      TranslationsHomePageTicketsInvitationValidationInvitedJa.internal(_root);
}

// Path: ticketPage.editFields.name.validation
class TranslationsTicketPageEditFieldsNameValidationJa {
  TranslationsTicketPageEditFieldsNameValidationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tooLong => '名前は20文字以内で入力してください';
  String get invalidCharacters => '名前には特殊文字は使用できません';
  String get empty => '名前を入力してください';
}

// Path: ticketPage.editFields.comment.validation
class TranslationsTicketPageEditFieldsCommentValidationJa {
  TranslationsTicketPageEditFieldsCommentValidationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tooLong => 'ひとことは40文字以内で入力してください';
  String get invalidCharacters => 'ひとことには特殊文字は使用できません';
  String get empty => 'ひとことを入力してください';
}

// Path: ticketPage.editFields.xAccount.validation
class TranslationsTicketPageEditFieldsXAccountValidationJa {
  TranslationsTicketPageEditFieldsXAccountValidationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get tooLong => 'Xアカウントは40文字以内で入力してください';
  String get invalidCharacters => 'Xアカウントには英数字以外の文字は使用できません';
}

// Path: ticketPage.editFields.avatar.crop
class TranslationsTicketPageEditFieldsAvatarCropJa {
  TranslationsTicketPageEditFieldsAvatarCropJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => '画像を切り取ってください';
  String get cropButton => '切り取る';
}

// Path: homePage.tickets.invitation.validation.dialog
class TranslationsHomePageTicketsInvitationValidationDialogJa {
  TranslationsHomePageTicketsInvitationValidationDialogJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get ok => '決定';
  String get cancel => 'キャンセル';
}

// Path: homePage.tickets.invitation.validation.invited
class TranslationsHomePageTicketsInvitationValidationInvitedJa {
  TranslationsHomePageTicketsInvitationValidationInvitedJa.internal(this._root);

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
      case 'ticketPage.qrCode.title':
        return 'チケットQRコード';
      case 'ticketPage.qrCode.description':
        return 'このQRコードは、FlutterKaigi 2024当日の受付で使用します。\n当日は、このQRコードをスタッフにご提示ください。';
      case 'ticketPage.qrCode.showWalletQr':
        return 'QRコードで別の端末にチケットを追加';
      case 'ticketPage.qrCode.walletQrTitle':
        return 'Walletに追加';
      case 'ticketPage.qrCode.walletQrDescription':
        return 'iPhone/AndroidでこのQRコードを読み取ると、ウォレットアプリにチケットを追加できます';
      case 'ticketPage.qrCode.close':
        return '閉じる';
      case 'ticketPage.qrCode.ticketId':
        return 'チケットID';
      case 'ticketPage.qrCode.sectionId':
        return 'ネームプレート 区画ID';
      case 'ticketPage.entranceInformation.title':
        return '入場時の情報';
      case 'ticketPage.entranceInformation.description.0':
        return 'FlutterKaigi 2024開催までの間に、このページに入場用QRコードが表示されます。';
      case 'ticketPage.entranceInformation.description.1':
        return '入場時は、そのQRコードをスタッフに見せてください。';
      default:
        return null;
    }
  }
}
