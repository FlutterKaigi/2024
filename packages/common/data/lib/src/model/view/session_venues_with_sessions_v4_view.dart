import 'package:common_data/src/model/speaker.dart';
import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_venues_with_sessions_v4_view.freezed.dart';
part 'session_venues_with_sessions_v4_view.g.dart';

/// `public.session_venues_with_sessions_v4` のビューを表すモデル
@freezed
class SessionVenuesWithSessionsV4View with _$SessionVenuesWithSessionsV4View {
  const factory SessionVenuesWithSessionsV4View({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV4View> sessions,
  }) = _SessionVenuesWithSessionsV4View;

  factory SessionVenuesWithSessionsV4View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionVenuesWithSessionsV4ViewFromJson(json);
}

/// `public.session_venues_with_sessions_v4`ビューの`sessions`の要素を表すモデル
@freezed
class SessionsWithSpeakerSponsorV4View with _$SessionsWithSpeakerSponsorV4View {
  const factory SessionsWithSpeakerSponsorV4View({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<SpeakerTable> speakers,
    required List<SponsorV2Table> sponsors,
    @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) Uri? videoUrl,
  }) = _SessionsWithSpeakerSponsorV4View;

  factory SessionsWithSpeakerSponsorV4View.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SessionsWithSpeakerSponsorV4ViewFromJson(json);
}

@freezed
class SessionVenuesWithSessionsV4 with _$SessionVenuesWithSessionsV4 {
  const factory SessionVenuesWithSessionsV4({
    required String id,
    required String name,
    required List<SessionsWithSpeakerSponsorV4> sessions,
  }) = _SessionVenuesWithSessionsV4;

  factory SessionVenuesWithSessionsV4.fromJson(Map<String, dynamic> json) =>
      _$SessionVenuesWithSessionsV4FromJson(json);
}

@freezed
class SessionsWithSpeakerSponsorV4 with _$SessionsWithSpeakerSponsorV4 {
  const factory SessionsWithSpeakerSponsorV4({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<Speaker> speakers,
    required List<SponsorV2> sponsors,
    @JsonKey(fromJson: _uriFromJson, toJson: _uriToJson) Uri? videoUrl,
  }) = _SessionsWithSpeakerSponsorV4;

  factory SessionsWithSpeakerSponsorV4.fromJson(Map<String, dynamic> json) =>
      _$SessionsWithSpeakerSponsorV4FromJson(json);
}

Uri? _uriFromJson(String? json) => json == null ? null : Uri.parse(json);
String? _uriToJson(Uri? uri) => uri?.toString();
