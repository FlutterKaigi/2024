import 'package:common_data/src/model/speaker.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'speaker_repository.g.dart';

@Riverpod(keepAlive: true)
SpeakerRepository speakerRepository(Ref ref) => SpeakerRepository(
      client: ref.watch(supabaseClientProvider),
      speakerStorageFileApi: ref.watch(speakerStorageFileApiProvider),
    );

class SpeakerRepository {
  SpeakerRepository({
    required SupabaseClient client,
    required StorageFileApi speakerStorageFileApi,
  })  : _client = client,
        _speakerStorageFileApi = speakerStorageFileApi;

  final SupabaseClient _client;
  final StorageFileApi _speakerStorageFileApi;

  Future<List<Speaker>> fetchSpeakers() async {
    final response = await _client
        .from('speakers')
        .select()
        .withConverter((json) => json.map(SpeakerTable.fromJson).toList());
    return response.map(toSpeaker).toList();
  }

  Speaker toSpeaker(SpeakerTable speakerTable) => Speaker(
        id: speakerTable.id,
        name: speakerTable.name,
        avatarUri: Uri.parse(
          _speakerStorageFileApi.getPublicUrl(speakerTable.avatarName),
        ),
        xUri: speakerTable.xId != null
            ? Uri.parse(
                'https://x.com/${speakerTable.xId}',
              )
            : null,
      );
}
