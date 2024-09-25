import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nNewsEn extends L10nNews {
  L10nNewsEn([String locale = 'en']) : super(locale);

  @override
  String get newsPageTitle => 'News';

  @override
  String get newsIsEmpty => 'There\'s no new news right now.';
}
