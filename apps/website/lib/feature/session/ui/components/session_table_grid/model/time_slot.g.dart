// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'time_slot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TimeSlotImpl _$$TimeSlotImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$TimeSlotImpl',
      json,
      ($checkedConvert) {
        final val = _$TimeSlotImpl(
          time: $checkedConvert('time', (v) => DateTime.parse(v as String)),
          sessions: $checkedConvert(
              'sessions',
              (v) => (v as List<dynamic>)
                  .map((e) => _$recordConvert(
                        e,
                        ($jsonValue) => (
                          session: SessionWithSpeakerAndSponsor.fromJson(
                              $jsonValue['session'] as Map<String, dynamic>),
                          sessionVenue: SessionVenuesWithSessions.fromJson(
                              $jsonValue['sessionVenue']
                                  as Map<String, dynamic>),
                        ),
                      ))
                  .toList()),
          specialSession: $checkedConvert(
              'special_session',
              (v) => v == null
                  ? null
                  : SpecialSession.fromJson(v as Map<String, dynamic>)),
        );
        return val;
      },
      fieldKeyMap: const {'specialSession': 'special_session'},
    );

Map<String, dynamic> _$$TimeSlotImplToJson(_$TimeSlotImpl instance) =>
    <String, dynamic>{
      'time': _dateTimeToString(instance.time),
      'sessions': instance.sessions
          .map((e) => <String, dynamic>{
                'session': e.session.toJson(),
                'sessionVenue': e.sessionVenue.toJson(),
              })
          .toList(),
      'special_session': instance.specialSession?.toJson(),
    };

$Rec _$recordConvert<$Rec>(
  Object? value,
  $Rec Function(Map) convert,
) =>
    convert(value as Map<String, dynamic>);
