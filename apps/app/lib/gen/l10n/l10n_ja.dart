// ignore_for_file: type=lint

import 'l10n.dart';

/// The translations for Japanese (`ja`).
class L10nJa extends L10n {
  L10nJa([String locale = 'ja']) : super(locale);

  @override
  String get mainPageNavigationBarLabelSessions => 'Sessions';

  @override
  String get mainPageNavigationBarLabelVenue => 'Venue';

  @override
  String get mainPageNavigationBarLabelNews => 'News';

  @override
  String get mainPageNavigationBarLabelAbout => 'About';
}
