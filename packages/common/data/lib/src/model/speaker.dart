import 'package:freezed_annotation/freezed_annotation.dart';

part 'speaker.freezed.dart';
part 'speaker.g.dart';

@freezed
class Speaker with _$Speaker {
  const factory Speaker({
    required String id,
    required String name,
    required Uri? avatarUri,
    required Uri? xUri,
  }) = _Speaker;

  factory Speaker.fromJson(Map<String, dynamic> json) =>
      _$SpeakerFromJson(json);
}

/// `public.speakers`テーブルの要素を表すモデル
@freezed
class SpeakerTable with _$SpeakerTable {
  const factory SpeakerTable({
    required String id,
    required String name,
    required String avatarName,
    required String? xId,
  }) = _SpeakerTable;

  factory SpeakerTable.fromJson(Map<String, dynamic> json) =>
      _$SpeakerTableFromJson(json);
}
