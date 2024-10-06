import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';

@freezed
class Profile with _$Profile {
  const factory Profile({
    required String id,
    required String name,
    required Role role,
    required String comment,
    required DateTime createdAt,
    required bool? isAdult,

    /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
    @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
    Future<Uint8List?> Function()? userAvatarFetch,

    /// Googleアカウントのアバター画像のURL
    Uri? googleAvatarUri,
    String? avatarName,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
class ProfileTable with _$ProfileTable {
  const factory ProfileTable({
    required String id,
    required String name,
    required Role role,
    required String comment,
    required String? avatarName,
    required DateTime createdAt,
    required Uri? avatarUrl,
    required bool? isAdult,
  }) = _ProfileTable;

  factory ProfileTable.fromJson(Map<String, dynamic> json) =>
      _$ProfileTableFromJson(json);
}

enum Role {
  admin,
  user,
  sponsor,
  speaker,
  ;
}
