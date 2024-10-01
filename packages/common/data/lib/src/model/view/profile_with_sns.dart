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
    /// ユーザがセットしたアバター画像のURL
    required Uri? userAvatarUri,
    required DateTime createdAt,
    /// Googleアカウントのアバター画像のURL
    required Uri? googleAvatarUri,
    required bool isAdult,
    required List<ProfileSocialNetworkingService> snsAccounts,
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
  }) = _ProfileWithSns;

  factory ProfileWithSnsView.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithSnsViewFromJson(json);
}
