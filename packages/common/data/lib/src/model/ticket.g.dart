// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'ticket.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TicketImpl _$$TicketImplFromJson(Map<String, dynamic> json) => $checkedCreate(
      r'_$TicketImpl',
      json,
      ($checkedConvert) {
        final val = _$TicketImpl(
          id: $checkedConvert('id', (v) => v as String),
          userId: $checkedConvert('user_id', (v) => v as String),
          type: $checkedConvert(
              'type', (v) => $enumDecode(_$TicketTypeEnumMap, v)),
          createdAt:
              $checkedConvert('created_at', (v) => DateTime.parse(v as String)),
          sessionId: $checkedConvert('session_id', (v) => v as String?),
          sponsorId: $checkedConvert('sponsor_id', (v) => (v as num?)?.toInt()),
          stripeCheckoutSessionId: $checkedConvert(
              'stripe_checkout_session_id', (v) => v as String?),
        );
        return val;
      },
      fieldKeyMap: const {
        'userId': 'user_id',
        'createdAt': 'created_at',
        'sessionId': 'session_id',
        'sponsorId': 'sponsor_id',
        'stripeCheckoutSessionId': 'stripe_checkout_session_id'
      },
    );

Map<String, dynamic> _$$TicketImplToJson(_$TicketImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'type': _$TicketTypeEnumMap[instance.type]!,
      'created_at': instance.createdAt.toIso8601String(),
      'session_id': instance.sessionId,
      'sponsor_id': instance.sponsorId,
      'stripe_checkout_session_id': instance.stripeCheckoutSessionId,
    };

const _$TicketTypeEnumMap = {
  TicketType.sponsorBooth: 'sponsorBooth',
  TicketType.sponsorInvited: 'sponsorInvited',
  TicketType.individualSponsor: 'individualSponsor',
  TicketType.general: 'general',
  TicketType.regularSpeaker: 'regularSpeaker',
  TicketType.sponsorSpeaker: 'sponsorSpeaker',
};
