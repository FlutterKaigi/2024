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

  /// スポンサーとそれに紐づくセッションを取得する
  /// スポンサーはsort_idの昇順に並び替えられています
  Future<List<SponsorWithSessionV3>> fetchSponsorWithSessionsV3() async {
    final result = await _supabaseClient
        .from('sponsor_with_sessions_v3')
        .select()
        .order('sort_id', ascending: true)
        .withConverter(
          (json) => json.map(SponsorWithSessionV3View.fromJson).toList(),
        );
    return result.map(toSponsorWithSessionV3).toList();
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

  SponsorWithSessionV3 toSponsorWithSessionV3(
    SponsorWithSessionV3View sponsorWithSessionV3View,
  ) =>
      SponsorWithSessionV3(
        id: sponsorWithSessionV3View.id,
        name: sponsorWithSessionV3View.name,
        logoUrl: Uri.parse(
          _sponsorStorageFileApi
              .getPublicUrl(sponsorWithSessionV3View.logoName),
        ),
        sortId: sponsorWithSessionV3View.sortId,
        description: sponsorWithSessionV3View.description,
        url: sponsorWithSessionV3View.url,
        type: sponsorWithSessionV3View.type,
        sessions: sponsorWithSessionV3View.sessions
            .map(_toSponsorWithSessionV3Session)
            .toList(),
      );

  SponsorWithSessionV3Session _toSponsorWithSessionV3Session(
    SponsorWithSessionV3ViewSession sponsorWithSessionV3ViewSession,
  ) =>
      SponsorWithSessionV3Session(
        id: sponsorWithSessionV3ViewSession.id,
        title: sponsorWithSessionV3ViewSession.title,
        description: sponsorWithSessionV3ViewSession.description,
        startsAt: sponsorWithSessionV3ViewSession.startsAt,
        endsAt: sponsorWithSessionV3ViewSession.endsAt,
        isLightningTalk: sponsorWithSessionV3ViewSession.isLightningTalk,
        speakers: sponsorWithSessionV3ViewSession.speakers
            .map(_speakerRepository.toSpeaker)
            .toList(),
        venue: sponsorWithSessionV3ViewSession.venue,
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
