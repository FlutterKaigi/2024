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
    required String avatarName,
    required DateTime createdAt,
    required String avatarUrl,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

enum Role {
  admin,
  user,
  sponsor,
  speaker,
  ;
}
