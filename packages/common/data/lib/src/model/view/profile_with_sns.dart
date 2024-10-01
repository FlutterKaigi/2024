import 'package:common_data/src/model/profile_social_networking_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_with_sns.freezed.dart';
part 'profile_with_sns.g.dart';

@freezed
class ProfileWithSns with _$ProfileWithSns {
  const factory ProfileWithSns({
    required String id,
    required String name,
    required String avatarUrl,
    required String avatarName,
    required List<ProfileSocialNetworkingService> snsAccounts,

    /// `public.profile_with_sns` View以外では`null`になります
    /// `public.profile_with_sns` Viewの場合は、常に`true`もしくは`false`になります
    @Default(null) bool? isAdult,
  }) = _ProfileWithSns;

  factory ProfileWithSns.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithSnsFromJson(json);
}
