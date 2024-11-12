import 'package:common_data/session.dart';
import 'package:common_data/sponsor.dart';
import 'package:common_data/src/model/speaker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_with_session.freezed.dart';
part 'sponsor_with_session.g.dart';

@Deprecated('Use SponsorWithSessionV3View instead')
@freezed
class SponsorWithSessionView with _$SponsorWithSessionView {
  @Deprecated('Use SponsorWithSessionV3View instead')
  const factory SponsorWithSessionView({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SessionWithSpeakerAndVenue> sessions,
  }) = _SponsorWithSessionView;

  @Deprecated('Use SponsorWithSessionV3View instead')
  factory SponsorWithSessionView.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionViewFromJson(json);
}

@Deprecated('Use SponsorWithSessionV3 instead')
@freezed
class SponsorWithSession with _$SponsorWithSession {
  @Deprecated('Use SponsorWithSessionV3 instead')
  const factory SponsorWithSession({
    required int id,
    required String name,
    required Uri? logoUrl,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SessionWithSpeakerAndVenue> sessions,
  }) = _SponsorWithSession;

  @Deprecated('Use SponsorWithSessionV3 instead')
  factory SponsorWithSession.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionFromJson(json);
}

@Deprecated('Use SessionWithSpeakerAndVenueV3 instead')
@freezed
class SessionWithSpeakerAndVenue with _$SessionWithSpeakerAndVenue {
  @Deprecated('Use SessionWithSpeakerAndVenueV3 instead')
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

  @Deprecated('Use SessionWithSpeakerAndVenueV3 instead')
  factory SessionWithSpeakerAndVenue.fromJson(Map<String, dynamic> json) =>
      _$SessionWithSpeakerAndVenueFromJson(json);
}

/// `public.sponsor_with_sessions_v2` Viewに対応するモデル
@Deprecated('Use SponsorWithSessionV3View instead')
@freezed
class SponsorWithSessionV2View with _$SponsorWithSessionV2View {
  @Deprecated('Use SponsorWithSessionV3View instead')
  const factory SponsorWithSessionV2View({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required Uri? url,
    required SponsorType type,
    required int sortId,
    required List<SponsorWithSessionV2ViewSession> sessions,
  }) = _SponsorWithSessionV2View;

  @Deprecated('Use SponsorWithSessionV3View instead')
  factory SponsorWithSessionV2View.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2ViewFromJson(json);
}

/// `public.sponsor_with_sessions_v2` Viewの`sessions`フィールドに対応するモデル
@Deprecated('Use SponsorWithSessionV3ViewSession instead')
@freezed
class SponsorWithSessionV2ViewSession with _$SponsorWithSessionV2ViewSession {
  @Deprecated('Use SponsorWithSessionV3ViewSession instead')
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

  @Deprecated('Use SponsorWithSessionV3ViewSession instead')
  factory SponsorWithSessionV2ViewSession.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2ViewSessionFromJson(json);
}

@Deprecated('Use SponsorWithSessionV3 instead')
@freezed
class SponsorWithSessionV2 with _$SponsorWithSessionV2 {
  @Deprecated('Use SponsorWithSessionV3 instead')
  const factory SponsorWithSessionV2({
    required int id,
    required String name,
    required Uri? logoUrl,
    required String description,
    required Uri? url,
    required SponsorType type,
    required int sortId,
    required List<SponsorWithSessionV2Session> sessions,
  }) = _SponsorWithSessionV2;

  @Deprecated('Use SponsorWithSessionV3 instead')
  factory SponsorWithSessionV2.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2FromJson(json);
}

@Deprecated('Use SponsorWithSessionV3Session instead')
@freezed
class SponsorWithSessionV2Session with _$SponsorWithSessionV2Session {
  @Deprecated('Use SponsorWithSessionV3Session instead')
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

  @Deprecated('Use SponsorWithSessionV3Session instead')
  factory SponsorWithSessionV2Session.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV2SessionFromJson(json);
}

/// `public.sponsor_with_sessions_v3` Viewに対応するモデル
@freezed
class SponsorWithSessionV3View with _$SponsorWithSessionV3View {
  const factory SponsorWithSessionV3View({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required Uri? url,
    required SponsorTypeV2 type,
    required int sortId,
    required List<SponsorWithSessionV3ViewSession> sessions,
  }) = _SponsorWithSessionV3View;

  factory SponsorWithSessionV3View.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV3ViewFromJson(json);
}

/// `public.sponsor_with_sessions_v3` Viewの`sessions`フィールドに対応するモデル
@freezed
class SponsorWithSessionV3ViewSession with _$SponsorWithSessionV3ViewSession {
  const factory SponsorWithSessionV3ViewSession({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<SpeakerTable> speakers,
    required SessionVenue venue,
  }) = _SponsorWithSessionV3ViewSession;

  factory SponsorWithSessionV3ViewSession.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV3ViewSessionFromJson(json);
}

@freezed
class SponsorWithSessionV3 with _$SponsorWithSessionV3 {
  const factory SponsorWithSessionV3({
    required int id,
    required String name,
    required Uri? logoUrl,
    required String description,
    required Uri? url,
    required SponsorTypeV2 type,
    required int sortId,
    required List<SponsorWithSessionV3Session> sessions,
  }) = _SponsorWithSessionV3;

  factory SponsorWithSessionV3.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV3FromJson(json);
}

@freezed
class SponsorWithSessionV3Session with _$SponsorWithSessionV3Session {
  const factory SponsorWithSessionV3Session({
    required String id,
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required bool isLightningTalk,
    required List<Speaker> speakers,
    required SessionVenue venue,
  }) = _SponsorWithSessionV3Session;

  factory SponsorWithSessionV3Session.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionV3SessionFromJson(json);
}
