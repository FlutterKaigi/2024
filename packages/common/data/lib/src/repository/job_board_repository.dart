import 'package:common_data/src/model/job_board.dart';
import 'package:common_data/src/supabase_client.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'job_board_repository.g.dart';

@Riverpod(keepAlive: true)
JobBoardRepository jobBoardRepository(Ref ref) => JobBoardRepository(
      client: ref.watch(supabaseClientProvider),
      storageFileApi: ref.watch(jobBoardStorageFileApiProvider),
    );

class JobBoardRepository {
  JobBoardRepository({
    required SupabaseClient client,
    required StorageFileApi storageFileApi,
  })  : _client = client,
        _storageFileApi = storageFileApi;

  final SupabaseClient _client;
  final StorageFileApi _storageFileApi;

  Future<List<JobBoard>> fetchJobBoards() async {
    final response = await _client.from('job_boards').select().withConverter(
          (json) => json.map(JobBoardTable.fromJson).toList(),
        );
    return response
        .map(
          (jobBoard) => JobBoard(
            id: jobBoard.id,
            uri: Uri.parse(jobBoard.uri),
            altText: jobBoard.altText,
            imageUri:
                Uri.parse(_storageFileApi.getPublicUrl(jobBoard.imageName)),
          ),
        )
        .toList();
  }
}
