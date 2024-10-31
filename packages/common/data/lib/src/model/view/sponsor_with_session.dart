import 'package:common_data/session.dart';
import 'package:common_data/sponsor.dart';
import 'package:common_data/src/model/speaker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_with_session.freezed.dart';
part 'sponsor_with_session.g.dart';

@Deprecated('Use SponsorWithSessionV2View instead')
@freezed
class SponsorWithSessionView with _$SponsorWithSessionView {
  @Deprecated('Use SponsorWithSessionV2View instead')
  const factory SponsorWithSessionView({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SessionWithSpeakerAndVenue> sessions,
  }) = _SponsorWithSessionView;

  @Deprecated('Use SponsorWithSessionV2View instead')
  factory SponsorWithSessionView.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionViewFromJson(json);
}

@Deprecated('Use SponsorWithSessionV2 instead')
@freezed
class SponsorWithSession with _$SponsorWithSession {
  @Deprecated('Use SponsorWithSessionV2 instead')
  const factory SponsorWithSession({
    required int id,
    required String name,
    required Uri? logoUrl,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SessionWithSpeakerAndVenue> sessions,
  }) = _SponsorWithSession;

  @Deprecated('Use SponsorWithSessionV2 instead')
  factory SponsorWithSession.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionFromJson(json);
}

@Deprecated('Use SessionWithSpeakerAndVenueV2 instead')
@freezed
class SessionWithSpeakerAndVenue with _$SessionWithSpeakerAndVenue {
  @Deprecated('Use SessionWithSpeakerAndVenueV2 instead')
  const factory SessionWithSpeakerAndVenue({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<ProfileWithSnsView> speakers,
    required SessionVenue venue,
  }) = _SessionWithSpeakerAndVenue;

  @Deprecated('Use SessionWithSpeakerAndVenueV2 instead')
  factory SessionWithSpeakerAndVenue.fromJson(Map<String, dynamic> json) =>
      _$SessionWithSpeakerAndVenueFromJson(json);
}

/// `public.sponsor_with_sessions_v2` Viewに対応するモデル
@freezed
class SponsorWithSessionV2View with _$SponsorWithSessionV2View {
  const factory SponsorWithSessionV2View({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SponsorWithSessionV2ViewSession> sessions,
  }) = _SponsorWithSessionV2View;

  factory SponsorWithSessionV2View.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2ViewFromJson(json);
}

/// `public.sponsor_with_sessions_v2` Viewの`sessions`フィールドに対応するモデル
@freezed
class SponsorWithSessionV2ViewSession with _$SponsorWithSessionV2ViewSession {
  const factory SponsorWithSessionV2ViewSession({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<SpeakerTable> speakers,
    required SessionVenue venue,
  }) = _SponsorWithSessionV2ViewSession;

  factory SponsorWithSessionV2ViewSession.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2ViewSessionFromJson(json);
}

@freezed
class SponsorWithSessionV2 with _$SponsorWithSessionV2 {
  const factory SponsorWithSessionV2({
    required int id,
    required String name,
    required Uri? logoUrl,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SponsorWithSessionV2Session> sessions,
  }) = _SponsorWithSessionV2;

  factory SponsorWithSessionV2.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2FromJson(json);
}

@freezed
class SponsorWithSessionV2Session with _$SponsorWithSessionV2Session {
  const factory SponsorWithSessionV2Session({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<Speaker> speakers,
    required SessionVenue venue,
  }) = _SponsorWithSessionV2Session;

  factory SponsorWithSessionV2Session.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2SessionFromJson(json);
}
