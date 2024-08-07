import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nAboutJa extends L10nAbout {
  L10nAboutJa([String locale = 'ja']) : super(locale);

  @override
  String get aboutPageTitle => 'About us';

  @override
  String get flutterKaigiDescription =>
      'FlutterKaigi は世界中の Flutter/Dart を愛する人々が集まる場所です。知識や情熱を共有する場を提供することを目的に、Flutter/Dart に魅せられた有志によって実行委員会が組織されています。初心者から上級者までが集まり、Flutter/Dart について学び、語り合い、楽しむことができます。イベントの開催は日本になりますが、インターネット配信を活用し、全世界に発信しています。';

  @override
  String get location => '有明セントラルタワーホール&カンファレンス';

  @override
  String get date => '2024年11月21日～22日';

  @override
  String get contributors => 'コントリビューター';

  @override
  String get sponsors => 'スポンサー';

  @override
  String get websiteAndAppContributors => 'Website/App コントリビューター';

  @override
  String get staffs => 'スタッフ';

  @override
  String get other => 'Others';

  @override
  String get codeOfConduct => '行動規範';

  @override
  String get codeOfConductUrl =>
      'https://flutterkaigi.jp/flutterkaigi/Code-of-Conduct.ja.html';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get contactUs => 'お問い合わせ';

  @override
  String get ossLicenses => 'OSS Licenses';

  @override
  String get licensesAboutUs =>
      'Flutterおよび関連ロゴはGoogle LLCの商標です。FlutterKaigiはGoogle LLCとは提携しておらず、または他の形でスポンサーを受けていません。';

  @override
  String get applicationName => 'FlutterKaigi 2024 Official App';
}
