import 'package:freezed_annotation/freezed_annotation.dart';

part 'contributor.freezed.dart';
part 'contributor.g.dart';

@freezed
class Contributor with _$Contributor {
  const factory Contributor({
    required String name,
    required Uri avatarUrl,
    required int contributionCount,
  }) = _Contributor;

  factory Contributor.fromJson(Map<String, dynamic> json) =>
      _$ContributorFromJson(json);
}
