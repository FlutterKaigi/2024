import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor.freezed.dart';
part 'sponsor.g.dart';

@freezed
@Deprecated('Sponsor is deprecated. Use SponsorV2 instead.')
class Sponsor with _$Sponsor {
  @Deprecated('Sponsor is deprecated. Use SponsorV2 instead.')
  const factory Sponsor({
    required int id,
    required String name,
    required Uri logoUrl,
    required String description,
    required Uri? url,
    required SponsorType type,
  }) = _Sponsor;

  @Deprecated('Sponsor is deprecated. Use SponsorV2 instead.')
  factory Sponsor.fromJson(Map<String, dynamic> json) =>
      _$SponsorFromJson(json);
}

@Deprecated('SponsorType is deprecated. Use SponsorTypeV2 instead.')
enum SponsorType {
  platinum,
  gold,
  silver,
  bronze,
  ;
}

@freezed
class SponsorV2 with _$SponsorV2 {
  const factory SponsorV2({
    required int id,
    required String name,
    required Uri logoUrl,
    required String description,
    required Uri? url,
    required SponsorTypeV2 type,
  }) = _SponsorV2;

  factory SponsorV2.fromJson(Map<String, dynamic> json) =>
      _$SponsorV2FromJson(json);
}

enum SponsorTypeV2 {
  // public.sponsor_type
  platinum,
  gold,
  silver,
  bronze,
  // public.special_sponsor_type
  community,
  translation,
}
