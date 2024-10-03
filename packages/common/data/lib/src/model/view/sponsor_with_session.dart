import 'package:common_data/session.dart';
import 'package:common_data/sponsor.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sponsor_with_session.freezed.dart';
part 'sponsor_with_session.g.dart';

@freezed
class SponsorWithSessionView with _$SponsorWithSessionView {
  const factory SponsorWithSessionView({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SessionWithSpeakerAndVenue> sessions,
  }) = _SponsorWithSessionView;

  factory SponsorWithSessionView.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionViewFromJson(json);
}

@freezed
class SponsorWithSession with _$SponsorWithSession {
  const factory SponsorWithSession({
    required int id,
    required String name,
    required Uri? logoUrl,
    required String description,
    required Uri? url,
    required SponsorType type,
    required List<SessionWithSpeakerAndVenue> sessions,
  }) = _SponsorWithSession;

  factory SponsorWithSession.fromJson(Map<String, dynamic> json) =>
      _$SponsorWithSessionFromJson(json);
}

@freezed
class SessionWithSpeakerAndVenue with _$SessionWithSpeakerAndVenue {
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

  factory SessionWithSpeakerAndVenue.fromJson(Map<String, dynamic> json) =>
      _$SessionWithSpeakerAndVenueFromJson(json);
}
