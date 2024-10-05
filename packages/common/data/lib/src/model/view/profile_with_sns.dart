import 'dart:typed_data';

import 'package:common_data/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_with_sns.freezed.dart';
part 'profile_with_sns.g.dart';

/// `ProfileWithSnsView`をデベロッパーフレンドリーにした型
@freezed
class ProfileWithSns with _$ProfileWithSns {
  const factory ProfileWithSns({
    required String id,
    required String name,
    required Role role,
    required String comment,
    required DateTime createdAt,

    /// Googleアカウントのアバター画像のURL
    required Uri? googleAvatarUri,
    required bool isAdult,
    required List<ProfileSocialNetworkingService> snsAccounts,

    /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
    @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
    Future<Uint8List?> Function()? userAvatarFetch,

    String? avatarName,
  }) = _ProfileWithSns;

  factory ProfileWithSns.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithSnsFromJson(json);
}

/// Postgresの`public.profile_with_sns` Viewに対応するモデル
@freezed
class ProfileWithSnsView with _$ProfileWithSnsView {
  const factory ProfileWithSnsView({
    required String id,
    required String name,
    required Role role,
    required String comment,
    required String? avatarName,
    required DateTime createdAt,
    required Uri? avatarUrl,
    required bool isAdult,
    required List<ProfileSocialNetworkingService> snsAccounts,
  }) = _ProfileWithSnsView;

  factory ProfileWithSnsView.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithSnsViewFromJson(json);
}
