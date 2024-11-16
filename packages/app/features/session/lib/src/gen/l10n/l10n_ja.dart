import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nSessionJa extends L10nSession {
  L10nSessionJa([String locale = 'ja']) : super(locale);

  @override
  String get bookmarked => 'お気に入り';

  @override
  String get openSpeakersLink => '登壇者情報を見る';

  @override
  String get registerToCalendar => 'スケジュールをカレンダーに登録する';

  @override
  String get sessionPageTitle => 'Session';

  @override
  String get sessionsPageTitle => 'Sessions';

  @override
  String get shareOnX => 'Xで共有する';

  @override
  String get feedback => 'フィードバック';

  @override
  String get sendFeedback => 'フィードバックを送信する';
}
