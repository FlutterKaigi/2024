import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/model/view/profile_with_sns.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions.freezed.dart';
part 'session_venues_with_sessions.g.dart';

@freezed
class SessionVenuesWithSessions with _$SessionVenuesWithSessions {
  const factory SessionVenuesWithSessions({
    required String id,
    required String name,

  }) = _SessionVenuesWithSessions;

  factory SessionVenuesWithSessions.fromJson(Map<String, dynamic> json) =>
    _$SessionVenuesWithSessionsFromJson(json);
}

@freezed
class SessionWithSpeakerAndSponsor with _$SessionWithSpeakerAndSponsor {
  const factory SessionWithSpeakerAndSponsor({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<ProfileWithSns> speakers,
    required List<Sponsor> sponsors,
  }) = _SessionWithSpeakerAndSponsor;

  factory SessionWithSpeakerAndSponsor.fromJson(Map<String, dynamic> json) =>
    _$SessionWithSpeakerAndSponsorFromJson(json);
}
