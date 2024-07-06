// ignore_for_file: type=lint

import 'l10n.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class L10nEn extends L10n {
  L10nEn([String locale = 'en']) : super(locale);

  @override
  String get mainPageNavigationBarLabelSessions => 'Sessions';

  @override
  String get mainPageNavigationBarLabelVenue => 'Venue';

  @override
  String get mainPageNavigationBarLabelNews => 'News';

  @override
  String get mainPageNavigationBarLabelAbout => 'About';
}
