// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'profile_with_ticket_and_entry_log.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileWithTicketAndEntryLogImpl _$$ProfileWithTicketAndEntryLogImplFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$ProfileWithTicketAndEntryLogImpl',
      json,
      ($checkedConvert) {
        final val = _$ProfileWithTicketAndEntryLogImpl(
          id: $checkedConvert('id', (v) => v as String),
          email: $checkedConvert('email', (v) => v as String),
          profile: $checkedConvert(
              'profile', (v) => Profile.fromJson(v as Map<String, dynamic>)),
          ticket: $checkedConvert(
              'ticket',
              (v) => v == null
                  ? null
                  : Ticket.fromJson(v as Map<String, dynamic>)),
          entryLog: $checkedConvert(
              'entry_log',
              (v) => v == null
                  ? null
                  : EntryLog.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'entryLog': 'entry_log'},
    );

Map<String, dynamic> _$$ProfileWithTicketAndEntryLogImplToJson(
        _$ProfileWithTicketAndEntryLogImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'profile': instance.profile,
      'ticket': instance.ticket,
      'entry_log': instance.entryLog,
    };

_$ProfileWithTicketAndEntryLogArgumentImpl
    _$$ProfileWithTicketAndEntryLogArgumentImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ProfileWithTicketAndEntryLogArgumentImpl',
          json,
          ($checkedConvert) {
            final val = _$ProfileWithTicketAndEntryLogArgumentImpl(
              hasTicket: $checkedConvert('has_ticket', (v) => v as bool?),
              hasEntryLog: $checkedConvert('has_entry_log', (v) => v as bool?),
              userIdContains:
                  $checkedConvert('user_id_contains', (v) => v as String?),
              emailContains:
                  $checkedConvert('email_contains', (v) => v as String?),
            );
            return val;
          },
          fieldKeyMap: const {
            'hasTicket': 'has_ticket',
            'hasEntryLog': 'has_entry_log',
            'userIdContains': 'user_id_contains',
            'emailContains': 'email_contains'
          },
        );

Map<String, dynamic> _$$ProfileWithTicketAndEntryLogArgumentImplToJson(
        _$ProfileWithTicketAndEntryLogArgumentImpl instance) =>
    <String, dynamic>{
      'has_ticket': instance.hasTicket,
      'has_entry_log': instance.hasEntryLog,
      'user_id_contains': instance.userIdContains,
      'email_contains': instance.emailContains,
    };

_$ProfileWithTicketAndEntryLogViewImpl
    _$$ProfileWithTicketAndEntryLogViewImplFromJson(
            Map<String, dynamic> json) =>
        $checkedCreate(
          r'_$ProfileWithTicketAndEntryLogViewImpl',
          json,
          ($checkedConvert) {
            final val = _$ProfileWithTicketAndEntryLogViewImpl(
              id: $checkedConvert('id', (v) => v as String),
              email: $checkedConvert('email', (v) => v as String),
              profile: $checkedConvert('profile',
                  (v) => ProfileTable.fromJson(v as Map<String, dynamic>)),
              ticket: $checkedConvert(
                  'ticket',
                  (v) => v == null
                      ? null
                      : Ticket.fromJson(v as Map<String, dynamic>)),
              entryLog: $checkedConvert(
                  'entry_log',
                  (v) => v == null
                      ? null
                      : EntryLog.fromJson(v as Map<String, dynamic>)),
            );
            return val;
          },
          fieldKeyMap: const {'entryLog': 'entry_log'},
        );

Map<String, dynamic> _$$ProfileWithTicketAndEntryLogViewImplToJson(
        _$ProfileWithTicketAndEntryLogViewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'profile': instance.profile,
      'ticket': instance.ticket,
      'entry_log': instance.entryLog,
    };
