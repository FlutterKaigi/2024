import 'package:common_data/src/model/sponsor.dart';
import 'package:common_data/src/model/view/sponsor_with_session.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'sponsor_repository.freezed.dart';
part 'sponsor_repository.g.dart';

@Riverpod(keepAlive: true)
SponsorRepository sponsorRepository(SponsorRepositoryRef ref) =>
    SponsorRepository(
      supabaseClient: ref.watch(supabaseClientProvider),
      sponsorStorageFileApi: ref.watch(sponsorStorageFileApiProvider),
    );

final class SponsorRepository {
  SponsorRepository({
    required SupabaseClient supabaseClient,
    required StorageFileApi sponsorStorageFileApi,
  })  : _supabaseClient = supabaseClient,
        _sponsorStorageFileApi = sponsorStorageFileApi;

  final SupabaseClient _supabaseClient;
  final StorageFileApi _sponsorStorageFileApi;

  Future<List<Sponsor>> fetchSponsors() async {
    final result =
        await _supabaseClient.from('sponsors').select().withConverter(
              (json) => json.map(SponsorTable.fromJson).toList(),
            );
    return result
        .map(
          (sponsor) => Sponsor(
            id: sponsor.id,
            name: sponsor.name,
            logoUrl: Uri.parse(
              _sponsorStorageFileApi.getPublicUrl(sponsor.logoName),
            ),
            description: sponsor.description,
            url: sponsor.url != null ? Uri.tryParse(sponsor.url!) : null,
            type: sponsor.type,
          ),
        )
        .toList();
  }

  Future<List<SponsorWithSession>> fetchSponsorWithSessions() async {
    final result = await _supabaseClient
        .from('sponsor_with_sessions')
        .select()
        .withConverter(
          (json) => json.map(SponsorWithSessionView.fromJson).toList(),
        );

    return result
        .map(
          (sponsor) => SponsorWithSession(
            id: sponsor.id,
            name: sponsor.name,
            logoUrl: sponsor.logoUrl,
            description: sponsor.description,
            url: sponsor.url,
            type: sponsor.type,
          ),
        )
        .toList();
  }
}

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
