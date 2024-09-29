import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venue.freezed.dart';
part 'session_venue.g.dart';

@freezed
class SessionVenue with _$SessionVenue {
  const factory SessionVenue({
    required String id,
    required String name,
  }) = _SessionVenue;

  factory SessionVenue.fromJson(Map<String, dynamic> json) =>
      _$SessionVenueFromJson(json);
}
