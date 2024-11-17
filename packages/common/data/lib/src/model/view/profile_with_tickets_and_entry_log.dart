import 'package:common_data/src/model/entry_log.dart';
import 'package:common_data/src/model/profile.dart';
import 'package:common_data/ticket.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_with_tickets_and_entry_log.freezed.dart';
part 'profile_with_tickets_and_entry_log.g.dart';

@freezed
class ProfileWithTicketsAndEntryLog with _$ProfileWithTicketsAndEntryLog {
  const factory ProfileWithTicketsAndEntryLog({
    required Profile profile,
    required Ticket ticket,
    required EntryLog entryLog,
  }) = _ProfileWithTicketsAndEntryLog;

  factory ProfileWithTicketsAndEntryLog.fromJson(Map<String, dynamic> json) =>
      _$ProfileWithTicketsAndEntryLogFromJson(json);
}

@freezed
class ProfileWithTicketsAndEntryLogView
    with _$ProfileWithTicketsAndEntryLogView {
  const factory ProfileWithTicketsAndEntryLogView({
    required ProfileTable profile,
    required Ticket ticket,
    required EntryLog entryLog,
  }) = _ProfileWithTicketsAndEntryLogView;

  factory ProfileWithTicketsAndEntryLogView.fromJson(
          Map<String, dynamic> json) =>
      _$ProfileWithTicketsAndEntryLogViewFromJson(json);
}
