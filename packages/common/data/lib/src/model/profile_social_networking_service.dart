import 'package:common_data/src/model/sns.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_social_networking_service.freezed.dart';
part 'profile_social_networking_service.g.dart';

@freezed
class ProfileSocialNetworkingService with _$ProfileSocialNetworkingService {
  const factory ProfileSocialNetworkingService({
    required String id,
    required SnsType type,
    required String value,
  }) = _ProfileSocialNetworkingService;

  factory ProfileSocialNetworkingService.fromJson(Map<String, dynamic> json) =>
      _$ProfileSocialNetworkingServiceFromJson(json);
}
