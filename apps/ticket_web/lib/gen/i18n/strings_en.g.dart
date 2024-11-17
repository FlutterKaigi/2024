///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsEn(
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
        super(
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

  late final TranslationsEn _root = this; // ignore: unused_field

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
  late final _TranslationsHomePageEn homePage =
      _TranslationsHomePageEn._(_root);
  @override
  late final _TranslationsVerifyPurchaseEn verifyPurchase =
      _TranslationsVerifyPurchaseEn._(_root);
  @override
  late final _TranslationsAuthorizationEn authorization =
      _TranslationsAuthorizationEn._(_root);
  @override
  late final _TranslationsFooterEn footer = _TranslationsFooterEn._(_root);
  @override
  late final _TranslationsErrorEn error = _TranslationsErrorEn._(_root);
  @override
  late final _TranslationsTicketPageEn ticketPage =
      _TranslationsTicketPageEn._(_root);
}

// Path: homePage
class _TranslationsHomePageEn extends TranslationsHomePageJa {
  _TranslationsHomePageEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsHomePageTitleAndLogoEn titleAndLogo =
      _TranslationsHomePageTitleAndLogoEn._(_root);
  @override
  late final _TranslationsHomePageTicketWillBeOnSaleCardEn
      ticketWillBeOnSaleCard =
      _TranslationsHomePageTicketWillBeOnSaleCardEn._(_root);
  @override
  late final _TranslationsHomePagePrePurchaseWarningDialogEn
      prePurchaseWarningDialog =
      _TranslationsHomePagePrePurchaseWarningDialogEn._(_root);
  @override
  late final _TranslationsHomePageTicketsEn tickets =
      _TranslationsHomePageTicketsEn._(_root);
}

// Path: verifyPurchase
class _TranslationsVerifyPurchaseEn extends TranslationsVerifyPurchaseJa {
  _TranslationsVerifyPurchaseEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsAuthorizationEn extends TranslationsAuthorizationJa {
  _TranslationsAuthorizationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String alreadyLoggedInWithMailAddress({required Object mailAddress}) =>
      'Already logged in with ${mailAddress}';
  @override
  String get logOut => 'Log Out';
  @override
  late final _TranslationsAuthorizationLogOutDialogEn logOutDialog =
      _TranslationsAuthorizationLogOutDialogEn._(_root);
}

// Path: footer
class _TranslationsFooterEn extends TranslationsFooterJa {
  _TranslationsFooterEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get copyRight => '@ FlutterKaigi 2024 Organizing Committee';
  @override
  late final _TranslationsFooterGoogleCopyrightEn googleCopyright =
      _TranslationsFooterGoogleCopyrightEn._(_root);
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
class _TranslationsErrorEn extends TranslationsErrorJa {
  _TranslationsErrorEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsErrorNetworkEn network =
      _TranslationsErrorNetworkEn._(_root);
}

// Path: ticketPage
class _TranslationsTicketPageEn extends TranslationsTicketPageJa {
  _TranslationsTicketPageEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsTicketPageThankYouCardEn thankYouCard =
      _TranslationsTicketPageThankYouCardEn._(_root);
  @override
  late final _TranslationsTicketPageWarningForSpeakerProfileEn
      warningForSpeakerProfile =
      _TranslationsTicketPageWarningForSpeakerProfileEn._(_root);
  @override
  late final _TranslationsTicketPageWarningForPersonalSponsorEn
      warningForPersonalSponsor =
      _TranslationsTicketPageWarningForPersonalSponsorEn._(_root);
  @override
  late final _TranslationsTicketPageInformationForProfileEditEn
      informationForProfileEdit =
      _TranslationsTicketPageInformationForProfileEditEn._(_root);
  @override
  late final _TranslationsTicketPageProfileEditRestrictionEn
      profileEditRestriction =
      _TranslationsTicketPageProfileEditRestrictionEn._(_root);
  @override
  String get designMayBeChanged =>
      '※The design of the name card may be changed on the day of FlutterKaigi 2024.';
  @override
  late final _TranslationsTicketPageEditFieldsEn editFields =
      _TranslationsTicketPageEditFieldsEn._(_root);
  @override
  late final _TranslationsTicketPageQrCodeEn qrCode =
      _TranslationsTicketPageQrCodeEn._(_root);
  @override
  late final _TranslationsTicketPageEntranceInformationEn entranceInformation =
      _TranslationsTicketPageEntranceInformationEn._(_root);
}

// Path: homePage.titleAndLogo
class _TranslationsHomePageTitleAndLogoEn
    extends TranslationsHomePageTitleAndLogoJa {
  _TranslationsHomePageTitleAndLogoEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get date => 'November\n21(Thu) - 22(Fri)';
  @override
  String get location => 'Ariake Central Tower & Conference';
}

// Path: homePage.ticketWillBeOnSaleCard
class _TranslationsHomePageTicketWillBeOnSaleCardEn
    extends TranslationsHomePageTicketWillBeOnSaleCardJa {
  _TranslationsHomePageTicketWillBeOnSaleCardEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsHomePagePrePurchaseWarningDialogEn
    extends TranslationsHomePagePrePurchaseWarningDialogJa {
  _TranslationsHomePagePrePurchaseWarningDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Pre-Purchase';
  @override
  String get accept => 'Accept';
  @override
  String get unaccept => 'Unaccept';
}

// Path: homePage.tickets
class _TranslationsHomePageTicketsEn extends TranslationsHomePageTicketsJa {
  _TranslationsHomePageTicketsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsHomePageTicketsVariantEn variant =
      _TranslationsHomePageTicketsVariantEn._(_root);
  @override
  String get buyTicket => 'Buy Ticket';
  @override
  String get loginBeforeBuy =>
      'Please login with your Google account to buy or register a ticket.';
  @override
  String get ticketManagedByGoogleAccount =>
      'After purchase or registration, tickets will be managed by your Google account.';
  @override
  late final _TranslationsHomePageTicketsAlreadyPurchasedCardEn
      alreadyPurchasedCard =
      _TranslationsHomePageTicketsAlreadyPurchasedCardEn._(_root);
  @override
  late final _TranslationsHomePageTicketsNormalEn normal =
      _TranslationsHomePageTicketsNormalEn._(_root);
  @override
  late final _TranslationsHomePageTicketsInvitationEn invitation =
      _TranslationsHomePageTicketsInvitationEn._(_root);
  @override
  late final _TranslationsHomePageTicketsPersonalSponsorEn personalSponsor =
      _TranslationsHomePageTicketsPersonalSponsorEn._(_root);
  @override
  late final _TranslationsHomePageTicketsStudentEn student =
      _TranslationsHomePageTicketsStudentEn._(_root);
}

// Path: authorization.logOutDialog
class _TranslationsAuthorizationLogOutDialogEn
    extends TranslationsAuthorizationLogOutDialogJa {
  _TranslationsAuthorizationLogOutDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsFooterGoogleCopyrightEn
    extends TranslationsFooterGoogleCopyrightJa {
  _TranslationsFooterGoogleCopyrightEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsErrorNetworkEn extends TranslationsErrorNetworkJa {
  _TranslationsErrorNetworkEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsTicketPageThankYouCardEn
    extends TranslationsTicketPageThankYouCardJa {
  _TranslationsTicketPageThankYouCardEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Thank you for purchasing a ticket!';
  @override
  String description({required Object type}) => 'You have a ${type}.';
}

// Path: ticketPage.warningForSpeakerProfile
class _TranslationsTicketPageWarningForSpeakerProfileEn
    extends TranslationsTicketPageWarningForSpeakerProfileJa {
  _TranslationsTicketPageWarningForSpeakerProfileEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Speaker Profile';
  @override
  String get description =>
      'Speaker profiles will be published on the FlutterKaigi official site. Please be careful.';
}

// Path: ticketPage.warningForPersonalSponsor
class _TranslationsTicketPageWarningForPersonalSponsorEn
    extends TranslationsTicketPageWarningForPersonalSponsorJa {
  _TranslationsTicketPageWarningForPersonalSponsorEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Personal Sponsor Profile';
  @override
  String get description =>
      'You have a personal sponsor ticket. You can choose to publish your profile on the FlutterKaigi official site.\nThe profile will be published in mid-October.';
  @override
  late final _TranslationsTicketPageWarningForPersonalSponsorButtonsEn buttons =
      _TranslationsTicketPageWarningForPersonalSponsorButtonsEn._(_root);
}

// Path: ticketPage.informationForProfileEdit
class _TranslationsTicketPageInformationForProfileEditEn
    extends TranslationsTicketPageInformationForProfileEditJa {
  _TranslationsTicketPageInformationForProfileEditEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Profile Information';
  @override
  String get description =>
      'The profile information you enter here will be printed on your name card at FlutterKaigi.\nYou can edit your name, comment, X account, and profile image.';
}

// Path: ticketPage.profileEditRestriction
class _TranslationsTicketPageProfileEditRestrictionEn
    extends TranslationsTicketPageProfileEditRestrictionJa {
  _TranslationsTicketPageProfileEditRestrictionEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Note on Profile Editing';
  @override
  String get description =>
      '- Profile images can only be used with your Google account image or uploaded image.\n- You can edit your profile until **Nov 12 (Tue) 22:00 JST**. After that, you will **not be able to edit your profile** due to printing reasons.';
}

// Path: ticketPage.editFields
class _TranslationsTicketPageEditFieldsEn
    extends TranslationsTicketPageEditFieldsJa {
  _TranslationsTicketPageEditFieldsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsTicketPageEditFieldsDialogEn dialog =
      _TranslationsTicketPageEditFieldsDialogEn._(_root);
  @override
  late final _TranslationsTicketPageEditFieldsNameEn name =
      _TranslationsTicketPageEditFieldsNameEn._(_root);
  @override
  late final _TranslationsTicketPageEditFieldsCommentEn comment =
      _TranslationsTicketPageEditFieldsCommentEn._(_root);
  @override
  late final _TranslationsTicketPageEditFieldsXAccountEn xAccount =
      _TranslationsTicketPageEditFieldsXAccountEn._(_root);
  @override
  late final _TranslationsTicketPageEditFieldsAvatarEn avatar =
      _TranslationsTicketPageEditFieldsAvatarEn._(_root);
  @override
  late final _TranslationsTicketPageEditFieldsIsAdultEn isAdult =
      _TranslationsTicketPageEditFieldsIsAdultEn._(_root);
  @override
  late final _TranslationsTicketPageEditFieldsResultsEn results =
      _TranslationsTicketPageEditFieldsResultsEn._(_root);
}

// Path: ticketPage.qrCode
class _TranslationsTicketPageQrCodeEn extends TranslationsTicketPageQrCodeJa {
  _TranslationsTicketPageQrCodeEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Ticket QR Code';
  @override
  String get description =>
      'This QR code will be used at the reception on the day of FlutterKaigi 2024.\nPlease show this QR code to the staff on the day of the event.';
  @override
  String get showWalletQr => 'Add ticket to another mobile device with QR Code';
  @override
  String get walletQrTitle => 'Add to Wallet';
  @override
  String get walletQrDescription =>
      'Scan this QR code with your iPhone/Android to add the ticket to your wallet app';
  @override
  String get close => 'Close';
  @override
  String get ticketId => 'Ticket ID';
  @override
  String get sectionId => 'Name Plate Section ID';
}

// Path: ticketPage.entranceInformation
class _TranslationsTicketPageEntranceInformationEn
    extends TranslationsTicketPageEntranceInformationJa {
  _TranslationsTicketPageEntranceInformationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Entrance Information';
  @override
  List<String> get description => [
        'A QR code for entry will be displayed on this page before FlutterKaigi 2024.',
        'Please show the QR code to staff at the entrance.',
      ];
}

// Path: homePage.tickets.variant
class _TranslationsHomePageTicketsVariantEn
    extends TranslationsHomePageTicketsVariantJa {
  _TranslationsHomePageTicketsVariantEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsHomePageTicketsAlreadyPurchasedCardEn
    extends TranslationsHomePageTicketsAlreadyPurchasedCardJa {
  _TranslationsHomePageTicketsAlreadyPurchasedCardEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsHomePageTicketsNormalEn
    extends TranslationsHomePageTicketsNormalJa {
  _TranslationsHomePageTicketsNormalEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsHomePageTicketsInvitationEn
    extends TranslationsHomePageTicketsInvitationJa {
  _TranslationsHomePageTicketsInvitationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
  late final _TranslationsHomePageTicketsInvitationValidationEn validation =
      _TranslationsHomePageTicketsInvitationValidationEn._(_root);
}

// Path: homePage.tickets.personalSponsor
class _TranslationsHomePageTicketsPersonalSponsorEn
    extends TranslationsHomePageTicketsPersonalSponsorJa {
  _TranslationsHomePageTicketsPersonalSponsorEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsHomePageTicketsStudentEn
    extends TranslationsHomePageTicketsStudentJa {
  _TranslationsHomePageTicketsStudentEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get name => 'Student Discount';
  @override
  String get description =>
      'If you are a student (Junior High School, High School, University(Including Junior College, Graduate School), Technical College, College of Technology(KOSEN), Specialized School, Vocational School)on the day of FlutterKaigi 2024, we will refund the full ticket price by showing your student ID at time of reception.\n※ Refunds are only valid on the day of the event. Only general tickets are eligible. If you are unsure whether your educational institution is eligible, please contact the organizers.';
}

// Path: ticketPage.warningForPersonalSponsor.buttons
class _TranslationsTicketPageWarningForPersonalSponsorButtonsEn
    extends TranslationsTicketPageWarningForPersonalSponsorButtonsJa {
  _TranslationsTicketPageWarningForPersonalSponsorButtonsEn._(
      TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get publishProfile => 'Publish Profile';
  @override
  String get doNotPublishProfile => 'DO NOT Publish Profile';
}

// Path: ticketPage.editFields.dialog
class _TranslationsTicketPageEditFieldsDialogEn
    extends TranslationsTicketPageEditFieldsDialogJa {
  _TranslationsTicketPageEditFieldsDialogEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'OK';
  @override
  String get cancel => 'Cancel';
}

// Path: ticketPage.editFields.name
class _TranslationsTicketPageEditFieldsNameEn
    extends TranslationsTicketPageEditFieldsNameJa {
  _TranslationsTicketPageEditFieldsNameEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Name';
  @override
  String get description =>
      'Please enter your name. (20 characters or less, no special characters allowed)';
  @override
  late final _TranslationsTicketPageEditFieldsNameValidationEn validation =
      _TranslationsTicketPageEditFieldsNameValidationEn._(_root);
}

// Path: ticketPage.editFields.comment
class _TranslationsTicketPageEditFieldsCommentEn
    extends TranslationsTicketPageEditFieldsCommentJa {
  _TranslationsTicketPageEditFieldsCommentEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Comment';
  @override
  String get description =>
      'Please enter your comment. (40 characters or less, no special characters allowed)';
  @override
  late final _TranslationsTicketPageEditFieldsCommentValidationEn validation =
      _TranslationsTicketPageEditFieldsCommentValidationEn._(_root);
}

// Path: ticketPage.editFields.xAccount
class _TranslationsTicketPageEditFieldsXAccountEn
    extends TranslationsTicketPageEditFieldsXAccountJa {
  _TranslationsTicketPageEditFieldsXAccountEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
  late final _TranslationsTicketPageEditFieldsXAccountValidationEn validation =
      _TranslationsTicketPageEditFieldsXAccountValidationEn._(_root);
}

// Path: ticketPage.editFields.avatar
class _TranslationsTicketPageEditFieldsAvatarEn
    extends TranslationsTicketPageEditFieldsAvatarJa {
  _TranslationsTicketPageEditFieldsAvatarEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
  late final _TranslationsTicketPageEditFieldsAvatarCropEn crop =
      _TranslationsTicketPageEditFieldsAvatarCropEn._(_root);
}

// Path: ticketPage.editFields.isAdult
class _TranslationsTicketPageEditFieldsIsAdultEn
    extends TranslationsTicketPageEditFieldsIsAdultJa {
  _TranslationsTicketPageEditFieldsIsAdultEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
class _TranslationsTicketPageEditFieldsResultsEn
    extends TranslationsTicketPageEditFieldsResultsJa {
  _TranslationsTicketPageEditFieldsResultsEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get success => 'Profile information updated successfully';
  @override
  String get error => 'Profile information update failed';
}

// Path: homePage.tickets.invitation.validation
class _TranslationsHomePageTicketsInvitationValidationEn
    extends TranslationsHomePageTicketsInvitationValidationJa {
  _TranslationsHomePageTicketsInvitationValidationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
  late final _TranslationsHomePageTicketsInvitationValidationDialogEn dialog =
      _TranslationsHomePageTicketsInvitationValidationDialogEn._(_root);
  @override
  late final _TranslationsHomePageTicketsInvitationValidationInvitedEn invited =
      _TranslationsHomePageTicketsInvitationValidationInvitedEn._(_root);
}

// Path: ticketPage.editFields.name.validation
class _TranslationsTicketPageEditFieldsNameValidationEn
    extends TranslationsTicketPageEditFieldsNameValidationJa {
  _TranslationsTicketPageEditFieldsNameValidationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get tooLong => 'Name must be 20 characters or less';
  @override
  String get invalidCharacters => 'Name must be alphanumeric';
}

// Path: ticketPage.editFields.comment.validation
class _TranslationsTicketPageEditFieldsCommentValidationEn
    extends TranslationsTicketPageEditFieldsCommentValidationJa {
  _TranslationsTicketPageEditFieldsCommentValidationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get tooLong => 'Comment must be 40 characters or less';
  @override
  String get invalidCharacters => 'Comment must be alphanumeric';
}

// Path: ticketPage.editFields.xAccount.validation
class _TranslationsTicketPageEditFieldsXAccountValidationEn
    extends TranslationsTicketPageEditFieldsXAccountValidationJa {
  _TranslationsTicketPageEditFieldsXAccountValidationEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get tooLong => 'X Account must be 40 characters or less';
  @override
  String get invalidCharacters => 'X Account must be alphanumeric';
}

// Path: ticketPage.editFields.avatar.crop
class _TranslationsTicketPageEditFieldsAvatarCropEn
    extends TranslationsTicketPageEditFieldsAvatarCropJa {
  _TranslationsTicketPageEditFieldsAvatarCropEn._(TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get title => 'Please crop the image';
  @override
  String get cropButton => 'Crop';
}

// Path: homePage.tickets.invitation.validation.dialog
class _TranslationsHomePageTicketsInvitationValidationDialogEn
    extends TranslationsHomePageTicketsInvitationValidationDialogJa {
  _TranslationsHomePageTicketsInvitationValidationDialogEn._(
      TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

  // Translations
  @override
  String get ok => 'OK';
  @override
  String get cancel => 'Cancel';
}

// Path: homePage.tickets.invitation.validation.invited
class _TranslationsHomePageTicketsInvitationValidationInvitedEn
    extends TranslationsHomePageTicketsInvitationValidationInvitedJa {
  _TranslationsHomePageTicketsInvitationValidationInvitedEn._(
      TranslationsEn root)
      : this._root = root,
        super.internal(root);

  final TranslationsEn _root; // ignore: unused_field

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
extension on TranslationsEn {
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
      case 'ticketPage.qrCode.title':
        return 'Ticket QR Code';
      case 'ticketPage.qrCode.description':
        return 'This QR code will be used at the reception on the day of FlutterKaigi 2024.\nPlease show this QR code to the staff on the day of the event.';
      case 'ticketPage.qrCode.showWalletQr':
        return 'Add ticket to another mobile device with QR Code';
      case 'ticketPage.qrCode.walletQrTitle':
        return 'Add to Wallet';
      case 'ticketPage.qrCode.walletQrDescription':
        return 'Scan this QR code with your iPhone/Android to add the ticket to your wallet app';
      case 'ticketPage.qrCode.close':
        return 'Close';
      case 'ticketPage.qrCode.ticketId':
        return 'Ticket ID';
      case 'ticketPage.qrCode.sectionId':
        return 'Name Plate Section ID';
      case 'ticketPage.entranceInformation.title':
        return 'Entrance Information';
      case 'ticketPage.entranceInformation.description.0':
        return 'A QR code for entry will be displayed on this page before FlutterKaigi 2024.';
      case 'ticketPage.entranceInformation.description.1':
        return 'Please show the QR code to staff at the entrance.';
      default:
        return null;
    }
  }
}
