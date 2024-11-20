// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'entry_log_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntryLogSummaryImpl _$$EntryLogSummaryImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$EntryLogSummaryImpl',
      json,
      ($checkedConvert) {
        final val = _$EntryLogSummaryImpl(
          totalTickets:
              $checkedConvert('total_tickets', (v) => (v as num).toInt()),
          totalEntries:
              $checkedConvert('total_entries', (v) => (v as num).toInt()),
        );
        return val;
      },
      fieldKeyMap: const {
        'totalTickets': 'total_tickets',
        'totalEntries': 'total_entries'
      },
    );

Map<String, dynamic> _$$EntryLogSummaryImplToJson(
        _$EntryLogSummaryImpl instance) =>
    <String, dynamic>{
      'total_tickets': instance.totalTickets,
      'total_entries': instance.totalEntries,
    };
