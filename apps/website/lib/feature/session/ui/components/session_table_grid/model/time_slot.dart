import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/model/special_session.dart';
import 'package:conference_2024_website/feature/session/data/sessions_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

@freezed
class TimeSlot with _$TimeSlot {
  const factory TimeSlot({
    required DateTime time,
    required List<SessionsWithSessionVenue> sessions,
    SpecialSession? specialSession,
  }) = _TimeSlot;
}
