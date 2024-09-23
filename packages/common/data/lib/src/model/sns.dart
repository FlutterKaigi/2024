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
  ;

  Uri toUri(String value) {
    final url = switch (this) {
      SnsType.github => 'https://github.com/$value',
      SnsType.x => 'https://x.com/$value',
      SnsType.discord => 'https://discord.com/users/$value',
      SnsType.medium => 'https://medium.com/@$value',
      SnsType.qiita => 'https://qiita.com/$value',
      SnsType.zenn => 'https://zenn.dev/$value',
      SnsType.note => 'https://note.com/$value',
      SnsType.other => value,
    };
    return Uri.parse(url);
  }
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
