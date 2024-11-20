import 'package:freezed_annotation/freezed_annotation.dart';

part 'entry_log_summary.freezed.dart';
part 'entry_log_summary.g.dart';

@freezed
class EntryLogSummary with _$EntryLogSummary {
  const factory EntryLogSummary({
    required int totalTickets,
    required int totalEntries,
  }) = _EntryLogSummary;

  factory EntryLogSummary.fromJson(Map<String, dynamic> json) =>
      _$EntryLogSummaryFromJson(json);
}
