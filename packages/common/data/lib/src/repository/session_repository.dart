import 'package:common_data/session.dart';
import 'package:common_data/src/model/view/session_venues_with_sessions_v3_view.dart';
import 'package:common_data/src/model/view/session_venues_with_sessions_v4_view.dart';
import 'package:common_data/src/repository/speaker_repository.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Session;

part 'session_repository.g.dart';

@Riverpod(keepAlive: true)
SessionRepository sessionRepository(Ref ref) => SessionRepository(
      client: ref.watch(supabaseClientProvider),
      sponsorRepository: ref.watch(sponsorRepositoryProvider),
      speakerRepository: ref.watch(speakerRepositoryProvider),
    );

class SessionRepository {
  SessionRepository({
    required SupabaseClient client,
    required SponsorRepository sponsorRepository,
    required SpeakerRepository speakerRepository,
  })  : _client = client,
        _sponsorRepository = sponsorRepository,
        _speakerRepository = speakerRepository;

  final SupabaseClient _client;
  final SponsorRepository _sponsorRepository;
  final SpeakerRepository _speakerRepository;

  @Deprecated('Use fetchSessionVenuesWithSessionsV4 instead')
  Future<List<SessionVenuesWithSessionsV3>>
      fetchSessionVenuesWithSessionsV3() async {
    final result = await _client
        .from('session_venues_with_sessions_v3')
        .select()
        .withConverter(
          (list) => list.map(SessionVenuesWithSessionsV3View.fromJson).toList(),
        );
    return result.map(toSessionVenuesWithSessionsV3).toList();
  }

  Future<List<SessionVenuesWithSessionsV4>>
      fetchSessionVenuesWithSessionsV4() async {
    final result = await _client
        .from('session_venues_with_sessions_v4')
        .select()
        .withConverter(
          (list) => list.map(SessionVenuesWithSessionsV4View.fromJson).toList(),
        );
    return result.map(toSessionVenuesWithSessionsV4).toList();
  }

  Future<List<Session>> fetchSessions() async =>
      _client.from('sessions').select().withConverter(
            (data) => data.map(Session.fromJson).toList(),
          );

  SessionVenuesWithSessionsV3 toSessionVenuesWithSessionsV3(
    SessionVenuesWithSessionsV3View sessionVenuesWithSessionsV3View,
  ) =>
      SessionVenuesWithSessionsV3(
        id: sessionVenuesWithSessionsV3View.id,
        name: sessionVenuesWithSessionsV3View.name,
        sessions: sessionVenuesWithSessionsV3View.sessions
            .map(_toSessionsWithSpeakerSponsorV3View)
            .toList(),
      );

  SessionsWithSpeakerSponsorV3 _toSessionsWithSpeakerSponsorV3View(
    SessionsWithSpeakerSponsorV3View sessionsWithSpeakerSponsorV3View,
  ) =>
      SessionsWithSpeakerSponsorV3(
        id: sessionsWithSpeakerSponsorV3View.id,
        title: sessionsWithSpeakerSponsorV3View.title,
        description: sessionsWithSpeakerSponsorV3View.description,
        startsAt: sessionsWithSpeakerSponsorV3View.startsAt,
        endsAt: sessionsWithSpeakerSponsorV3View.endsAt,
        isLightningTalk: sessionsWithSpeakerSponsorV3View.isLightningTalk,
        speakers: sessionsWithSpeakerSponsorV3View.speakers
            .map(_speakerRepository.toSpeaker)
            .toList(),
        sponsors: sessionsWithSpeakerSponsorV3View.sponsors
            .map(_sponsorRepository.toSponsorV2)
            .toList(),
      );

  SessionVenuesWithSessionsV4 toSessionVenuesWithSessionsV4(
    SessionVenuesWithSessionsV4View sessionVenuesWithSessionsV4View,
  ) =>
      SessionVenuesWithSessionsV4(
        id: sessionVenuesWithSessionsV4View.id,
        name: sessionVenuesWithSessionsV4View.name,
        sessions: sessionVenuesWithSessionsV4View.sessions
            .map(_toSessionsWithSpeakerSponsorV4View)
            .toList(),
      );

  SessionsWithSpeakerSponsorV4 _toSessionsWithSpeakerSponsorV4View(
    SessionsWithSpeakerSponsorV4View sessionsWithSpeakerSponsorV4View,
  ) =>
      SessionsWithSpeakerSponsorV4(
        id: sessionsWithSpeakerSponsorV4View.id,
        title: sessionsWithSpeakerSponsorV4View.title,
        description: sessionsWithSpeakerSponsorV4View.description,
        startsAt: sessionsWithSpeakerSponsorV4View.startsAt,
        endsAt: sessionsWithSpeakerSponsorV4View.endsAt,
        isLightningTalk: sessionsWithSpeakerSponsorV4View.isLightningTalk,
        videoUrl: sessionsWithSpeakerSponsorV4View.videoUrl,
        speakers: sessionsWithSpeakerSponsorV4View.speakers
            .map(_speakerRepository.toSpeaker)
            .toList(),
        sponsors: sessionsWithSpeakerSponsorV4View.sponsors
            .map(_sponsorRepository.toSponsorV2)
            .toList(),
      );
}
