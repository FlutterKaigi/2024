import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor.freezed.dart';
part 'sponsor.g.dart';

@freezed
class Sponsor with _$Sponsor {
  const factory Sponsor({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required String? url,
    required SponsorType type,
  }) = _Sponsor;

  factory Sponsor.fromJson(Map<String, dynamic> json) =>
      _$SponsorFromJson(json);
}

enum SponsorType {
  platinum,
  gold,
  silver,
  bronze,
  ;
}
