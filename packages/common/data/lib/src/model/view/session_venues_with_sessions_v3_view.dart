import 'package:common_data/src/model/speaker.dart';
import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions_v3_view.freezed.dart';
part 'session_venues_with_sessions_v3_view.g.dart';

/// `public.session_venues_with_sessions_v3` のビューを表すモデル
@freezed
class SessionVenuesWithSessionsV3View with _$SessionVenuesWithSessionsV3View {
  const factory SessionVenuesWithSessionsV3View({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV3View> sessions,
  }) = _SessionVenuesWithSessionsV3View;

  factory SessionVenuesWithSessionsV3View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionVenuesWithSessionsV3ViewFromJson(json);
}

/// `public.session_venues_with_sessions_v3`ビューの`sessions`の要素を表すモデル
@freezed
class SessionsWithSpeakerSponsorV3View with _$SessionsWithSpeakerSponsorV3View {
  const factory SessionsWithSpeakerSponsorV3View({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<SpeakerTable> speakers,
    required List<SponsorV2Table> sponsors,
  }) = _SessionsWithSpeakerSponsorV3View;

  factory SessionsWithSpeakerSponsorV3View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionsWithSpeakerSponsorV3ViewFromJson(json);
}

@freezed
class SessionVenuesWithSessionsV3 with _$SessionVenuesWithSessionsV3 {
  const factory SessionVenuesWithSessionsV3({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV3> sessions,
  }) = _SessionVenuesWithSessionsV3;

  factory SessionVenuesWithSessionsV3.fromJson(Map<String, dynamic> json) =>
      _$SessionVenuesWithSessionsV3FromJson(json);
}

@freezed
class SessionsWithSpeakerSponsorV3 with _$SessionsWithSpeakerSponsorV3 {
  const factory SessionsWithSpeakerSponsorV3({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<Speaker> speakers,
    required List<SponsorV2> sponsors,
  }) = _SessionsWithSpeakerSponsorV3;

  factory SessionsWithSpeakerSponsorV3.fromJson(Map<String, dynamic> json) =>
      _$SessionsWithSpeakerSponsorV3FromJson(json);
}
