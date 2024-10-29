import 'package:freezed_annotation/freezed_annotation.dart';

part 'special_session.freezed.dart';
part 'special_session.g.dart';

@freezed
class SpecialSession with _$SpecialSession {
  const factory SpecialSession({
    required String title,
    required DateTime startsAt,
    required SpecialSessionType type,
    DateTime? endsAt,
    String? venueId,
  }) = _SpecialSession;

  factory SpecialSession.fromJson(Map<String, dynamic> json) =>
      _$SpecialSessionFromJson(json);
}

enum SpecialSessionType {
  opening,
  keynote,
  lunch,
  preparation,
  ;
}
