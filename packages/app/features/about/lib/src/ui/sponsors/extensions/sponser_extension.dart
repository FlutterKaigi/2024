import 'package:common_data/sponsor.dart';

extension SponsorExtension on Sponsor {
  String get nameUpperCase => name.replaceRange(
        0,
        1,
        name[0].toUpperCase(),
      );
}
