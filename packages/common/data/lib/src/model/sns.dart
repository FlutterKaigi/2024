import 'package:freezed_annotation/freezed_annotation.dart';

part 'sns.freezed.dart';
part 'sns.g.dart';

enum SnsType {
  github,
  x,
  discord,
  medium,
  qiita,
  zenn,
  note,
  other,
}

@freezed
class SnsAccount with _$SnsAccount {
  const factory SnsAccount({
    required SnsType type,
    required Uri link,
  }) = _SnsAccount;

  factory SnsAccount.fromJson(Map<String, dynamic> json) =>
      _$SnsAccountFromJson(json);
}
