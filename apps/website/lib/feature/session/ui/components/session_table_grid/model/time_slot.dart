import 'package:common_data/session.dart';
import 'package:conference_2024_website/feature/session/data/model/special_session.dart';
import 'package:conference_2024_website/feature/session/ui/components/session_table_grid/session_grid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'time_slot.freezed.dart';
part 'time_slot.g.dart';

@freezed
class TimeSlot with _$TimeSlot {
  @JsonSerializable(explicitToJson: true)
  const factory TimeSlot({
    @JsonKey(fromJson: DateTime.parse, toJson: _dateTimeToString)
    required DateTime time,
    required List<SessionAndSessionVenue> sessions,
    SpecialSession? specialSession,
  }) = _TimeSlot;

  factory TimeSlot.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotFromJson(json);
}

String _dateTimeToString(DateTime date) => date.toIso8601String();
