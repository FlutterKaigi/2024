// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_with_tickets_and_entry_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileWithTicketsAndEntryLogImpl
    _$$ProfileWithTicketsAndEntryLogImplFromJson(Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ProfileWithTicketsAndEntryLogImpl',
          json,
          ($checkedConvert) {
            final val = _$ProfileWithTicketsAndEntryLogImpl(
              profile: $checkedConvert('profile',
                  (v) => Profile.fromJson(v as Map<String, dynamic>)),
              ticket: $checkedConvert(
                  'ticket', (v) => Ticket.fromJson(v as Map<String, dynamic>)),
              entryLog: $checkedConvert('entry_log',
                  (v) => EntryLog.fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'entryLog': 'entry_log'},
        );

Map<String, dynamic> _$$ProfileWithTicketsAndEntryLogImplToJson(
        _$ProfileWithTicketsAndEntryLogImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'ticket': instance.ticket,
      'entry_log': instance.entryLog,
    };

_$ProfileWithTicketsAndEntryLogViewImpl
    _$$ProfileWithTicketsAndEntryLogViewImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ProfileWithTicketsAndEntryLogViewImpl',
          json,
          ($checkedConvert) {
            final val = _$ProfileWithTicketsAndEntryLogViewImpl(
              profile: $checkedConvert('profile',
                  (v) => ProfileTable.fromJson(v as Map<String, dynamic>)),
              ticket: $checkedConvert(
                  'ticket', (v) => Ticket.fromJson(v as Map<String, dynamic>)),
              entryLog: $checkedConvert('entry_log',
                  (v) => EntryLog.fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'entryLog': 'entry_log'},
        );

Map<String, dynamic> _$$ProfileWithTicketsAndEntryLogViewImplToJson(
        _$ProfileWithTicketsAndEntryLogViewImpl instance) =>
    <String, dynamic>{
      'profile': instance.profile,
      'ticket': instance.ticket,
      'entry_log': instance.entryLog,
    };
