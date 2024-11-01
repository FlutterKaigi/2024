import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/model/view/profile_with_sns.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions_view.freezed.dart';
part 'session_venues_with_sessions_view.g.dart';

@Deprecated('Use SessionVenuesWithSessionsV2View instead')
@freezed
class SessionVenuesWithSessionsView with _$SessionVenuesWithSessionsView {
  @Deprecated('Use SessionVenuesWithSessionsV2View instead')
  const factory SessionVenuesWithSessionsView({
    required String id,
    required String name,
    required List<SessionWithSpeakerAndSponsorView> sessions,
  }) = _SessionVenuesWithSessionsView;

  @Deprecated('Use SessionVenuesWithSessionsV2View instead')
  factory SessionVenuesWithSessionsView.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionVenuesWithSessionsViewFromJson(json);
}

@Deprecated('Use SessionWithSpeakerAndSponsorV2View instead')
@freezed
class SessionWithSpeakerAndSponsorView with _$SessionWithSpeakerAndSponsorView {
  @Deprecated('Use SessionWithSpeakerAndSponsorV2View instead')
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

  @Deprecated('Use SessionWithSpeakerAndSponsorV2View instead')
  factory SessionWithSpeakerAndSponsorView.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionWithSpeakerAndSponsorViewFromJson(json);
}

@Deprecated('Use SessionVenuesWithSessionsV2 instead')
@freezed
class SessionVenuesWithSessions with _$SessionVenuesWithSessions {
  @Deprecated('Use SessionVenuesWithSessionsV2 instead')
  const factory SessionVenuesWithSessions({
    required String id,
    required String name,
    required List<SessionWithSpeakerAndSponsor> sessions,
  }) = _SessionVenuesWithSessions;

  @Deprecated('Use SessionVenuesWithSessionsV2 instead')
  factory SessionVenuesWithSessions.fromJson(Map<String, dynamic> json) =>
      _$SessionVenuesWithSessionsFromJson(json);
}

@Deprecated('Use SessionWithSpeakerAndSponsorV2View instead')
@freezed
class SessionWithSpeakerAndSponsor with _$SessionWithSpeakerAndSponsor {
  @Deprecated('Use SessionWithSpeakerAndSponsorV2View instead')
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

  @Deprecated('Use SessionWithSpeakerAndSponsorV2View instead')
  factory SessionWithSpeakerAndSponsor.fromJson(Map<String, dynamic> json) =>
      _$SessionWithSpeakerAndSponsorFromJson(json);
}
