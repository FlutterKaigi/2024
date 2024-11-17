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
  String get title => 'FlutterKaigi';
  late final TranslationsComingSoonJa comingSoon =
      TranslationsComingSoonJa.internal(_root);
  String get year => '2024';
  late final TranslationsTitleAndLogoJa titleAndLogo =
      TranslationsTitleAndLogoJa.internal(_root);
  late final TranslationsLeadJa lead = TranslationsLeadJa.internal(_root);
  late final TranslationsHeaderJa header = TranslationsHeaderJa.internal(_root);
  late final TranslationsFooterJa footer = TranslationsFooterJa.internal(_root);
  late final TranslationsSponsorJa sponsor =
      TranslationsSponsorJa.internal(_root);
  late final TranslationsTicketJa ticket = TranslationsTicketJa.internal(_root);
  late final TranslationsSponsorsJa sponsors =
      TranslationsSponsorsJa.internal(_root);
  late final TranslationsStaffJa staff = TranslationsStaffJa.internal(_root);
  late final TranslationsJobBoardJa jobBoard =
      TranslationsJobBoardJa.internal(_root);
  late final TranslationsSessionJa session =
      TranslationsSessionJa.internal(_root);
  String get newsError => 'お知らせの取得に失敗しました';
  String get retry => '再試行';
}

// Path: comingSoon
class TranslationsComingSoonJa {
  TranslationsComingSoonJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get message => 'Other Contents\nComing Soon...';
}

// Path: titleAndLogo
class TranslationsTitleAndLogoJa {
  TranslationsTitleAndLogoJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get date => 'November\n21(Thu) - 22(Fri)';
  String get location => '有明セントラルタワーホール&カンファレンス';
}

// Path: lead
class TranslationsLeadJa {
  TranslationsLeadJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get message =>
      '昨年に引き続き、FlutterKaigi 2024を開催いたします！\nオフライン会場またはオンライン視聴からお選びください。\n詳細はイベント公式Ｘ(旧Twitter)アカウントにて随時発表していますので、ぜひチェックしてください！';
  String get xAccount => '@FlutterKaigi';
  late final TranslationsLeadDateJa date =
      TranslationsLeadDateJa.internal(_root);
  late final TranslationsLeadLocationJa location =
      TranslationsLeadLocationJa.internal(_root);
}

// Path: header
class TranslationsHeaderJa {
  TranslationsHeaderJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get sponsors => 'Sponsors';
  String get staff => 'Staff';
}

// Path: footer
class TranslationsFooterJa {
  TranslationsFooterJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get copyRight => '@ FlutterKaigi 2024 実行委員会';
  String get googleFlutter1 =>
      'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
  String get googleFlutter2 => 'The Flutter name and the Flutter logo';
  String get googleFlutter3 => 'are trademarks of Google LLC.';
  String get codeOfConduct => 'Code of Conduct';
  String get privacyPolicy => 'Privacy Policy';
  String get contact => 'Contact';
  String get license => 'License';
}

// Path: sponsor
class TranslationsSponsorJa {
  TranslationsSponsorJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Sponsor';
  late final TranslationsSponsorIndividualJa individual =
      TranslationsSponsorIndividualJa.internal(_root);
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
class TranslationsTicketJa {
  TranslationsTicketJa.internal(this._root);

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
class TranslationsSponsorsJa {
  TranslationsSponsorsJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Sponsors';
  late final TranslationsSponsorsLevelsJa levels =
      TranslationsSponsorsLevelsJa.internal(_root);
  String get sponsorsError => 'スポンサー一覧の取得に失敗しました';
  String get sponsorNotFound => 'スポンサーが見つかりませんでした';
  String get backToTop => 'トップに戻る';
}

// Path: staff
class TranslationsStaffJa {
  TranslationsStaffJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Staff';
}

// Path: jobBoard
class TranslationsJobBoardJa {
  TranslationsJobBoardJa.internal(this._root);

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
class TranslationsSessionJa {
  TranslationsSessionJa.internal(this._root);

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
class TranslationsLeadDateJa {
  TranslationsLeadDateJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get prefix => '開催日時';
  String get value => '2024年11月21日(木) - 22日(金)';
}

// Path: lead.location
class TranslationsLeadLocationJa {
  TranslationsLeadLocationJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get prefix => '会場';
  String get value => '有明セントラルタワー＆カンファレンス';
}

// Path: sponsor.individual
class TranslationsSponsorIndividualJa {
  TranslationsSponsorIndividualJa.internal(this._root);

  final Translations _root; // ignore: unused_field

  // Translations
  String get title => 'Individual Sponsors';
}

// Path: sponsors.levels
class TranslationsSponsorsLevelsJa {
  TranslationsSponsorsLevelsJa.internal(this._root);

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
      case 'title':
        return 'FlutterKaigi';
      case 'comingSoon.message':
        return 'Other Contents\nComing Soon...';
      case 'year':
        return '2024';
      case 'titleAndLogo.date':
        return 'November\n21(Thu) - 22(Fri)';
      case 'titleAndLogo.location':
        return '有明セントラルタワーホール&カンファレンス';
      case 'lead.message':
        return '昨年に引き続き、FlutterKaigi 2024を開催いたします！\nオフライン会場またはオンライン視聴からお選びください。\n詳細はイベント公式Ｘ(旧Twitter)アカウントにて随時発表していますので、ぜひチェックしてください！';
      case 'lead.xAccount':
        return '@FlutterKaigi';
      case 'lead.date.prefix':
        return '開催日時';
      case 'lead.date.value':
        return '2024年11月21日(木) - 22日(金)';
      case 'lead.location.prefix':
        return '会場';
      case 'lead.location.value':
        return '有明セントラルタワー＆カンファレンス';
      case 'header.sponsors':
        return 'Sponsors';
      case 'header.staff':
        return 'Staff';
      case 'footer.copyRight':
        return '@ FlutterKaigi 2024 実行委員会';
      case 'footer.googleFlutter1':
        return 'Flutter and the related logo are trademarks of Google LLC. FlutterKaigi is not affiliated with or otherwise sponsored by Google LLC.';
      case 'footer.googleFlutter2':
        return 'The Flutter name and the Flutter logo';
      case 'footer.googleFlutter3':
        return 'are trademarks of Google LLC.';
      case 'footer.codeOfConduct':
        return 'Code of Conduct';
      case 'footer.privacyPolicy':
        return 'Privacy Policy';
      case 'footer.contact':
        return 'Contact';
      case 'footer.license':
        return 'License';
      case 'sponsor.title':
        return 'Sponsor';
      case 'sponsor.individual.title':
        return 'Individual Sponsors';
      case 'sponsor.messages.0':
        return 'FlutterKaigi 2024を一緒に盛り上げていただけるスポンサーさまを心からお待ちしております。';
      case 'sponsor.messages.1':
        return 'この機会にあなたの企業や製品を、国内外のFlutterやDartに情熱を持つ技術者たちに紹介しませんか？';
      case 'sponsor.messages.2':
        return 'FlutterKaigi 2024は皆さまのご協力により、成功へと導かれます。';
      case 'sponsor.messages.3':
        return 'ともにFlutterコミュニティを成長させ、盛り上げるお手伝いをお願い申し上げます。';
      case 'sponsor.messages.4':
        return 'お申し込みは 6/17 10:00 より開始します';
      case 'sponsor.apply':
        return '協賛資料はこちら';
      case 'ticket.title':
        return 'Join FlutterKaigi 2024!';
      case 'ticket.messages.0':
        return 'FlutterKaigi 2024のチケット販売が開始しました!';
      case 'ticket.messages.1':
        return '一般チケットは6,000円、個人スポンサー付きチケットは30,000円(一般チケット+スポンサー料)です。';
      case 'ticket.messages.2':
        return 'また、一般チケットを対象に学割を実施致します。FlutterKaigi当日に学生の方は無料で参加いただけます。';
      case 'ticket.messages.3':
        return '詳細は、以下のリンクよりご確認ください。';
      case 'ticket.link':
        return 'チケット情報はこちら';
      case 'sponsors.title':
        return 'Sponsors';
      case 'sponsors.levels.platinum':
        return 'Platinum';
      case 'sponsors.levels.gold':
        return 'Gold';
      case 'sponsors.levels.silver':
        return 'Silver';
      case 'sponsors.levels.bronze':
        return 'Bronze';
      case 'sponsors.levels.community':
        return 'Community';
      case 'sponsors.levels.translation':
        return 'Translation';
      case 'sponsors.sponsorsError':
        return 'スポンサー一覧の取得に失敗しました';
      case 'sponsors.sponsorNotFound':
        return 'スポンサーが見つかりませんでした';
      case 'sponsors.backToTop':
        return 'トップに戻る';
      case 'staff.title':
        return 'Staff';
      case 'jobBoard.title':
        return 'Job Board';
      case 'jobBoard.messages.0':
        return 'FlutterKaigi 2024では、初の試みとして';
      case 'jobBoard.messages.1':
        return '企業の募集要項を掲載しています。';
      case 'jobBoard.messages.2':
        return 'ご興味のある方は、ぜひご確認ください。';
      case 'jobBoard.button':
        return 'ジョブボードを見る';
      case 'session.title':
        return 'Session';
      case 'session.messages.0':
        return 'FlutterKaigi 2024のセッション一覧です。';
      case 'session.messages.1':
        return 'セッションの詳細は、以下のリンクよりご確認ください。';
      case 'session.link':
        return 'セッション一覧はこちら';
      case 'newsError':
        return 'お知らせの取得に失敗しました';
      case 'retry':
        return '再試行';
      default:
        return null;
    }
  }
}
