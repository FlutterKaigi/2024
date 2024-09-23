import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_speaker.freezed.dart';
part 'session_speaker.g.dart';

@freezed
class SessionSpeaker with _$SessionSpeaker {
  const factory SessionSpeaker({
    required String sessionId,
    required String speakerId,
  }) = _SessionSpeaker;

  factory SessionSpeaker.fromJson(Map<String, dynamic> json) =>
      _$SessionSpeakerFromJson(json);
}
