import 'package:common_data/src/model/speaker.dart';
import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions_v2_view.freezed.dart';
part 'session_venues_with_sessions_v2_view.g.dart';

/// `public.session_venues_with_sessions_v2` のビューを表すモデル
@Deprecated('Use SessionVenuesWithSessionsV3View instead')
@freezed
class SessionVenuesWithSessionsV2View with _$SessionVenuesWithSessionsV2View {
  @Deprecated('Use SessionVenuesWithSessionsV3View instead')
  const factory SessionVenuesWithSessionsV2View({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV2View> sessions,
  }) = _SessionVenuesWithSessionsV2View;

  @Deprecated('Use SessionVenuesWithSessionsV3View instead')
  factory SessionVenuesWithSessionsV2View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionVenuesWithSessionsV2ViewFromJson(json);
}

/// `public.session_venues_with_sessions_v2`ビューの`sessions`の要素を表すモデル
@Deprecated('Use SessionsWithSpeakerSponsorV3View instead')
@freezed
class SessionsWithSpeakerSponsorV2View with _$SessionsWithSpeakerSponsorV2View {
  @Deprecated('Use SessionsWithSpeakerSponsorV3View instead')
  const factory SessionsWithSpeakerSponsorV2View({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<SpeakerTable> speakers,
    required List<SponsorTable> sponsors,
  }) = _SessionsWithSpeakerSponsorV2View;

  @Deprecated('Use SessionsWithSpeakerSponsorV3View instead')
  factory SessionsWithSpeakerSponsorV2View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionsWithSpeakerSponsorV2ViewFromJson(json);
}

@Deprecated('Use SessionVenuesWithSessionsV3 instead')
@freezed
class SessionVenuesWithSessionsV2 with _$SessionVenuesWithSessionsV2 {
  @Deprecated('Use SessionVenuesWithSessionsV3 instead')
  const factory SessionVenuesWithSessionsV2({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV2> sessions,
  }) = _SessionVenuesWithSessionsV2;

  @Deprecated('Use SessionVenuesWithSessionsV3 instead')
  factory SessionVenuesWithSessionsV2.fromJson(Map<String, dynamic> json) =>
      _$SessionVenuesWithSessionsV2FromJson(json);
}

@Deprecated('Use SessionsWithSpeakerSponsorV3 instead')
@freezed
class SessionsWithSpeakerSponsorV2 with _$SessionsWithSpeakerSponsorV2 {
  @Deprecated('Use SessionsWithSpeakerSponsorV3 instead')
  const factory SessionsWithSpeakerSponsorV2({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<Speaker> speakers,
    required List<Sponsor> sponsors,
  }) = _SessionsWithSpeakerSponsorV2;

  @Deprecated('Use SessionsWithSpeakerSponsorV3 instead')
  factory SessionsWithSpeakerSponsorV2.fromJson(Map<String, dynamic> json) =>
      _$SessionsWithSpeakerSponsorV2FromJson(json);
}
