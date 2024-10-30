// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: type=lint, duplicate_ignore

part of 'job_board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JobBoardImpl _$$JobBoardImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JobBoardImpl',
      json,
      ($checkedConvert) {
        final val = _$JobBoardImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          uri: $checkedConvert('uri', (v) => Uri.parse(v as String)),
          altText: $checkedConvert('alt_text', (v) => v as String),
          imageUri: $checkedConvert('image_uri', (v) => Uri.parse(v as String)),
        );
        return val;
      },
      fieldKeyMap: const {'altText': 'alt_text', 'imageUri': 'image_uri'},
    );

Map<String, dynamic> _$$JobBoardImplToJson(_$JobBoardImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uri': instance.uri.toString(),
      'alt_text': instance.altText,
      'image_uri': instance.imageUri.toString(),
    };

_$JobBoardTableImpl _$$JobBoardTableImplFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$JobBoardTableImpl',
      json,
      ($checkedConvert) {
        final val = _$JobBoardTableImpl(
          id: $checkedConvert('id', (v) => (v as num).toInt()),
          url: $checkedConvert('url', (v) => v as String),
          altText: $checkedConvert('alt_text', (v) => v as String),
          imageName: $checkedConvert('image_name', (v) => v as String),
        );
        return val;
      },
      fieldKeyMap: const {'altText': 'alt_text', 'imageName': 'image_name'},
    );

Map<String, dynamic> _$$JobBoardTableImplToJson(_$JobBoardTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'alt_text': instance.altText,
      'image_name': instance.imageName,
    };
