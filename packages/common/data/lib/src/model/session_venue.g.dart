// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'session_venue.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SessionVenueImpl _$$SessionVenueImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$SessionVenueImpl',
      json,
      ($checkedConvert) {
        final val = _$SessionVenueImpl(
          id: $checkedConvert('id', (v) => v as String),
          name: $checkedConvert('name', (v) => v as String),
        );
        return val;
      },
    );

Map<String, dynamic> _$$SessionVenueImplToJson(_$SessionVenueImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
