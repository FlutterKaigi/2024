import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor.freezed.dart';

@freezed
class Sponsors with _$Sponsors {
  const factory Sponsors({
    required List<Sponsor> platinum,
    required List<Sponsor> gold,
    required List<Sponsor> silver,
  }) = _Sponsors;

  factory Sponsors.fromJson(Map<String, dynamic> json) =>
      _$SponsorsFromJson(json);
}

@freezed
class Sponsor with _$Sponsor {
  const factory Sponsor({
    required String sponsorName,
    required String sponsorLinkUrl,
    required String sponsorLogoUrl,
    required String sponsorDescription,
  }) = _Sponsor;

  factory Sponsor.fromJson(Map<String, dynamic> json) =>
      _$SponsorFromJson(json);
}
