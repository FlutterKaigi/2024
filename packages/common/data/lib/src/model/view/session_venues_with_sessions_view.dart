import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/model/view/profile_with_sns.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions_view.freezed.dart';
part 'session_venues_with_sessions_view.g.dart';

@freezed
class SessionVenuesWithSessionsView with _$SessionVenuesWithSessionsView {
  const factory SessionVenuesWithSessionsView({
    required String id,
    required String name,
    required List<SessionWithSpeakerAndSponsorView> sessions,
  }) = _SessionVenuesWithSessionsView;

  factory SessionVenuesWithSessionsView.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionVenuesWithSessionsViewFromJson(json);
}

@freezed
class SessionWithSpeakerAndSponsorView with _$SessionWithSpeakerAndSponsorView {
  const factory SessionWithSpeakerAndSponsorView({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<ProfileWithSnsView> speakers,
    required List<SponsorTable> sponsors,
  }) = _SessionWithSpeakerAndSponsorView;

  factory SessionWithSpeakerAndSponsorView.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionWithSpeakerAndSponsorViewFromJson(json);
}

@freezed
class SessionVenuesWithSessions with _$SessionVenuesWithSessions {
  const factory SessionVenuesWithSessions({
    required String id,
    required String name,
    required List<SessionWithSpeakerAndSponsor> sessions,
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
    required List<ProfileWithSnsView> speakers,
    required List<Sponsor> sponsors,
  }) = _SessionWithSpeakerAndSponsor;

  factory SessionWithSpeakerAndSponsor.fromJson(Map<String, dynamic> json) =>
      _$SessionWithSpeakerAndSponsorFromJson(json);
}
