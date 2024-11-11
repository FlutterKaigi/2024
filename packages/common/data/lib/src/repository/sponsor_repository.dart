import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/model/view/sponsor_with_session.dart';
import 'package:common_data/src/repository/speaker_repository.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'sponsor_repository.freezed.dart';
part 'sponsor_repository.g.dart';

@Riverpod(keepAlive: true)
SponsorRepository sponsorRepository(Ref ref) => SponsorRepository(
      supabaseClient: ref.watch(supabaseClientProvider),
      sponsorStorageFileApi: ref.watch(sponsorStorageFileApiProvider),
      speakerRepository: ref.watch(speakerRepositoryProvider),
    );

final class SponsorRepository {
  SponsorRepository({
    required SupabaseClient supabaseClient,
    required StorageFileApi sponsorStorageFileApi,
    required SpeakerRepository speakerRepository,
  })  : _supabaseClient = supabaseClient,
        _sponsorStorageFileApi = sponsorStorageFileApi,
        _speakerRepository = speakerRepository;

  final SupabaseClient _supabaseClient;
  final StorageFileApi _sponsorStorageFileApi;
  final SpeakerRepository _speakerRepository;

  @Deprecated('Use fetchSponsorsV2 instead')
  Future<List<Sponsor>> fetchSponsors() async {
    final result =
        await _supabaseClient.from('sponsors').select().withConverter(
              (json) => json.map(SponsorTable.fromJson).toList(),
            );
    return result.map(toSponsor).toList();
  }

  @Deprecated('Use fetchSponsorsV2 instead')
  Future<List<SponsorV2>> fetchSponsorsV2() async {
    final result =
        await _supabaseClient.from('sponsors_v2').select().withConverter(
              (json) => json.map(SponsorV2Table.fromJson).toList(),
            );
    return result.map(toSponsorV2).toList();
  }

  @Deprecated('Use fetchSponsorWithSessionsV2 instead')
  Future<List<SponsorWithSession>> fetchSponsorWithSessions() async {
    final result = await _supabaseClient
        .from('sponsor_with_sessions')
        .select()
        .withConverter(
          (json) => json.map(SponsorWithSessionView.fromJson).toList(),
        );

    return result
        .map(
          toSponsorWithSession,
        )
        .toList();
  }

  /// スポンサーとそれに紐づくセッションを取得する
  /// スポンサーはsort_idの昇順に並び替えられています
  Future<List<SponsorWithSessionV2>> fetchSponsorWithSessionsV2() async {
    final result = await _supabaseClient
        .from('sponsor_with_sessions_v2')
        .select()
        .order('sort_id', ascending: true)
        .withConverter(
          (json) => json.map(SponsorWithSessionV2View.fromJson).toList(),
        );
    return result.map(toSponsorWithSessionV2).toList();
  }

  Sponsor toSponsor(SponsorTable sponsorTable) => Sponsor(
        id: sponsorTable.id,
        name: sponsorTable.name,
        logoUrl: Uri.parse(
          _sponsorStorageFileApi.getPublicUrl(sponsorTable.logoName),
        ),
        description: sponsorTable.description,
        url: sponsorTable.url != null ? Uri.tryParse(sponsorTable.url!) : null,
        type: sponsorTable.type,
      );

  SponsorV2 toSponsorV2(SponsorV2Table sponsorV2Table) => SponsorV2(
        id: sponsorV2Table.id,
        name: sponsorV2Table.name,
        logoUrl: Uri.parse(
          _sponsorStorageFileApi.getPublicUrl(sponsorV2Table.logoName),
        ),
        description: sponsorV2Table.description,
        url: sponsorV2Table.url != null
            ? Uri.tryParse(sponsorV2Table.url!)
            : null,
        type: sponsorV2Table.type,
      );

  @Deprecated('Use toSponsorWithSessionV2 instead')
  SponsorWithSession toSponsorWithSession(
    SponsorWithSessionView sponsorWithSessionView,
  ) =>
      SponsorWithSession(
        id: sponsorWithSessionView.id,
        name: sponsorWithSessionView.name,
        logoUrl: Uri.parse(
          _sponsorStorageFileApi.getPublicUrl(sponsorWithSessionView.logoName),
        ),
        description: sponsorWithSessionView.description,
        url: sponsorWithSessionView.url,
        type: sponsorWithSessionView.type,
        sessions: sponsorWithSessionView.sessions,
      );

  SponsorWithSessionV2 toSponsorWithSessionV2(
    SponsorWithSessionV2View sponsorWithSessionV2View,
  ) =>
      SponsorWithSessionV2(
        id: sponsorWithSessionV2View.id,
        name: sponsorWithSessionV2View.name,
        logoUrl: Uri.parse(
          _sponsorStorageFileApi
              .getPublicUrl(sponsorWithSessionV2View.logoName),
        ),
        sortId: sponsorWithSessionV2View.sortId,
        description: sponsorWithSessionV2View.description,
        url: sponsorWithSessionV2View.url,
        type: sponsorWithSessionV2View.type,
        sessions: sponsorWithSessionV2View.sessions
            .map(_toSponsorWithSessionV2Session)
            .toList(),
      );

  SponsorWithSessionV2Session _toSponsorWithSessionV2Session(
    SponsorWithSessionV2ViewSession sponsorWithSessionV2ViewSession,
  ) =>
      SponsorWithSessionV2Session(
        id: sponsorWithSessionV2ViewSession.id,
        title: sponsorWithSessionV2ViewSession.title,
        description: sponsorWithSessionV2ViewSession.description,
        startsAt: sponsorWithSessionV2ViewSession.startsAt,
        endsAt: sponsorWithSessionV2ViewSession.endsAt,
        isLightningTalk: sponsorWithSessionV2ViewSession.isLightningTalk,
        speakers: sponsorWithSessionV2ViewSession.speakers
            .map(_speakerRepository.toSpeaker)
            .toList(),
        venue: sponsorWithSessionV2ViewSession.venue,
      );
}

/// `public.sponsors`テーブルの要素を表すモデル
@freezed
class SponsorTable with _$SponsorTable {
  const factory SponsorTable({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required String? url,
    required SponsorType type,
  }) = _SponsorTable;

  factory SponsorTable.fromJson(Map<String, dynamic> json) =>
      _$SponsorTableFromJson(json);
}

/// `public.sponsors_v2`ビューの要素を表すモデル
@freezed
class SponsorV2Table with _$SponsorV2Table {
  const factory SponsorV2Table({
    required int id,
    required String name,
    required String logoName,
    required String description,
    required String? url,
    required SponsorTypeV2 type,
  }) = _SponsorV2Table;

  factory SponsorV2Table.fromJson(Map<String, dynamic> json) =>
      _$SponsorV2TableFromJson(json);
}
