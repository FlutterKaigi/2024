import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class L10nNewsJa extends L10nNews {
  L10nNewsJa([String locale = 'ja']) : super(locale);

  @override
  String get newsPageTitle => 'News';

  @override
  String get newsIsEmpty => '現在、新しいニュースはありません。';
}
