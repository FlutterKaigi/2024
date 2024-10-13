import 'package:common_data/profile.dart';
import 'package:common_data/src/model/session.dart';
import 'package:common_data/src/model/session_speaker.dart';
import 'package:common_data/src/model/session_venue.dart';
import 'package:common_data/src/model/view/session_venues_with_sessions_view.dart';
import 'package:common_data/src/repository/sponsor_repository.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide Session;

part 'session_repository.g.dart';

@Riverpod(keepAlive: true)
SessionRepository sessionRepository(SessionRepositoryRef ref) =>
    SessionRepository(
      client: ref.watch(supabaseClientProvider),
      sponsorStorageFileApi: ref.watch(sponsorStorageFileApiProvider),
      profileRepository: ref.watch(profileRepositoryProvider),
      sponsorRepository: ref.watch(sponsorRepositoryProvider),
    );

@Riverpod(keepAlive: true)
SessionVenueRepository sessionVenueRepository(SessionVenueRepositoryRef ref) =>
    SessionVenueRepository(client: ref.watch(supabaseClientProvider));

@Riverpod(keepAlive: true)
SessionSpeakerRepository sessionSpeakerRepository(
  SessionSpeakerRepositoryRef ref,
) =>
    SessionSpeakerRepository(
      client: ref.watch(supabaseClientProvider),
    );

class SessionRepository {
  SessionRepository({
    required SupabaseClient client,
    required StorageFileApi sponsorStorageFileApi,
    required ProfileRepository profileRepository,
    required SponsorRepository sponsorRepository,
  })  : _client = client,
        _sponsorStorageFileApi = sponsorStorageFileApi,
        _profileRepository = profileRepository,
        _sponsorRepository = sponsorRepository;

  final SupabaseClient _client;
  final StorageFileApi _sponsorStorageFileApi;
  final ProfileRepository _profileRepository;
  final SponsorRepository _sponsorRepository;

  Future<List<SessionVenuesWithSessions>>
      fetchSessionVenuesWithSessions() async {
    final result = await _client
        .from('session_venues_with_sessions')
        .select()
        .withConverter(
          (list) => list.map(SessionVenuesWithSessionsView.fromJson).toList(),
        );

    return result
        .map(
          (sessionVenuesWithSessions) => SessionVenuesWithSessions(
            id: sessionVenuesWithSessions.id,
            name: sessionVenuesWithSessions.name,
            sessions: sessionVenuesWithSessions.sessions
                .map(
                  (sessionWithSpeakerAndSponsor) =>
                      SessionWithSpeakerAndSponsor(
                    id: sessionWithSpeakerAndSponsor.id,
                    title: sessionWithSpeakerAndSponsor.title,
                    description: sessionWithSpeakerAndSponsor.description,
                    startsAt: sessionWithSpeakerAndSponsor.startsAt,
                    endsAt: sessionWithSpeakerAndSponsor.endsAt,
                    isLightningTalk:
                        sessionWithSpeakerAndSponsor.isLightningTalk,
                    speakers: sessionWithSpeakerAndSponsor.speakers
                        .map(_profileRepository.toProfileWithSns)
                        .toList(),
                    sponsors: sessionWithSpeakerAndSponsor.sponsors
                        .map(
                          _sponsorRepository.toSponsor,
                        )
                        .toList(),
                  ),
                )
                .toList(),
          ),
        )
        .toList();
  }

  Future<List<Session>> fetchSessions() async =>
      _client.from('sessions').select().withConverter(
            (data) => data.map(Session.fromJson).toList(),
          );

  Future<Session> createSession({
    required String title,
    required String description,
    required DateTime startsAt,
    required DateTime endsAt,
    required String? venueId,
    required int? sponsorId,
    required bool isLightningTalk,
  }) async =>
      _client
          .from('sessions')
          .insert({
            'title': title,
            'description': description,
            'starts_at': startsAt,
            'ends_at': endsAt,
            'venue_id': venueId,
            'sponsor_id': sponsorId,
            'is_lightning_talk': isLightningTalk,
          })
          .select()
          .single()
          .withConverter(Session.fromJson);

  Future<void> deleteSession(String id) async =>
      _client.from('sessions').delete().eq('id', id);
}

class SessionVenueRepository {
  SessionVenueRepository({
    required SupabaseClient client,
  }) : _client = client;

  final SupabaseClient _client;

  Future<List<SessionVenue>> fetchSessionVenues() async =>
      _client.from('session_venues').select().withConverter(
            (data) => data.map(SessionVenue.fromJson).toList(),
          );

  Future<SessionVenue> createSessionVenue({
    required String name,
  }) async =>
      _client
          .from('session_venues')
          .insert({
            'name': name,
          })
          .select()
          .single()
          .withConverter(SessionVenue.fromJson);

  Future<void> deleteSessionVenue(String id) async =>
      _client.from('session_venues').delete().eq('id', id);

  Future<void> updateSessionVenue(String id, {required String name}) async =>
      _client.from('session_venues').update({
        'name': name,
      }).eq('id', id);
}

class SessionSpeakerRepository {
  SessionSpeakerRepository({
    required SupabaseClient client,
  }) : _client = client;

  final SupabaseClient _client;

  Future<List<SessionSpeaker>> fetchSessionSpeakers() async =>
      _client.from('session_speakers').select().withConverter(
            (data) => data.map(SessionSpeaker.fromJson).toList(),
          );

  Future<SessionSpeaker> createSessionSpeaker({
    required String sessionId,
    required String speakerId,
  }) async =>
      _client
          .from('session_speakers')
          .insert({
            'session_id': sessionId,
            'speaker_id': speakerId,
          })
          .select()
          .single()
          .withConverter(SessionSpeaker.fromJson);

  Future<void> deleteSessionSpeaker(String sessionId, String speakerId) async =>
      _client
          .from('session_speakers')
          .delete()
          .eq('session_id', sessionId)
          .eq('speaker_id', speakerId);
}
