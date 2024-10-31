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
