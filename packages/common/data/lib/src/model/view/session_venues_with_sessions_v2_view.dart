import 'package:common_data/src/model/speaker.dart';
import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions_v2_view.freezed.dart';
part 'session_venues_with_sessions_v2_view.g.dart';

/// `public.session_venues_with_sessions_v2` のビューを表すモデル
@freezed
class SessionVenuesWithSessionsV2View with _$SessionVenuesWithSessionsV2View {
  const factory SessionVenuesWithSessionsV2View({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV2View> sessions,
  }) = _SessionVenuesWithSessionsV2View;

  factory SessionVenuesWithSessionsV2View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionVenuesWithSessionsV2ViewFromJson(json);
}

/// `public.session_venues_with_sessions_v2`ビューの`sessions`の要素を表すモデル
@freezed
class SessionsWithSpeakerSponsorV2View with _$SessionsWithSpeakerSponsorV2View {
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

  factory SessionsWithSpeakerSponsorV2View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionsWithSpeakerSponsorV2ViewFromJson(json);
}

@freezed
class SessionVenuesWithSessionsViewV2 with _$SessionVenuesWithSessionsViewV2 {
  const factory SessionVenuesWithSessionsViewV2({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV2> sessions,
  }) = _SessionVenuesWithSessionsViewV2;

  factory SessionVenuesWithSessionsViewV2.fromJson(Map<String, dynamic> json) =>
      _$SessionVenuesWithSessionsViewV2FromJson(json);
}

@freezed
class SessionsWithSpeakerSponsorV2 with _$SessionsWithSpeakerSponsorV2 {
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

  factory SessionsWithSpeakerSponsorV2.fromJson(Map<String, dynamic> json) =>
      _$SessionsWithSpeakerSponsorV2FromJson(json);
}
