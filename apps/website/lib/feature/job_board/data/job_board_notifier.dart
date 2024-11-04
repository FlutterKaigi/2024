import 'package:common_data/job_board.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'job_board_notifier.g.dart';

@Riverpod(keepAlive: true)
Future<List<JobBoard>> jobBoard(Ref ref) async {
  final repository = ref.watch(jobBoardRepositoryProvider);
  return repository.fetchJobBoards();
}
