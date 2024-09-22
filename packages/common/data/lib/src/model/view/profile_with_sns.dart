import 'package:common_data/staff.dart';
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
    required List<SnsAccount> snsAccounts,
  }) = _ProfileWithSns;

  factory ProfileWithSns.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithSnsFromJson(json);
}
