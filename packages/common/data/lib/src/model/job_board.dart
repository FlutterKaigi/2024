import 'package:freezed_annotation/freezed_annotation.dart';

part 'job_board.freezed.dart';
part 'job_board.g.dart';

@freezed
class JobBoard with _$JobBoard {
  const factory JobBoard({
    required int id,
    required Uri uri,
    required String altText,
    required Uri imageUri,
  }) = _JobBoard;

  factory JobBoard.fromJson(Map<String, dynamic> json) =>
      _$JobBoardFromJson(json);
}

@freezed
class JobBoardTable with _$JobBoardTable {
  const factory JobBoardTable({
    required int id,
    required String uri,
    required String altText,
    required String imageName,
  }) = _JobBoardTable;

  factory JobBoardTable.fromJson(Map<String, dynamic> json) =>
      _$JobBoardTableFromJson(json);
}
