import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nSessionEn extends L10nSession {
  L10nSessionEn([String locale = 'en']) : super(locale);

  @override
  String get sessionsPageTitle => 'Sessions';

  @override
  String get sessionPageTitle => 'Session';
}
