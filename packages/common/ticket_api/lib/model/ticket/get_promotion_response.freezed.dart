// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_promotion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetPromotionResponse _$GetPromotionResponseFromJson(Map<String, dynamic> json) {
  return _GetPromotionResponse.fromJson(json);
}

/// @nodoc
mixin _$GetPromotionResponse {
  PromotionMetadata get metadata => throw _privateConstructorUsedError;

  /// Serializes this GetPromotionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetPromotionResponseCopyWith<GetPromotionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPromotionResponseCopyWith<$Res> {
  factory $GetPromotionResponseCopyWith(GetPromotionResponse value,
          $Res Function(GetPromotionResponse) then) =
      _$GetPromotionResponseCopyWithImpl<$Res, GetPromotionResponse>;
  @useResult
  $Res call({PromotionMetadata metadata});

  $PromotionMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$GetPromotionResponseCopyWithImpl<$Res,
        $Val extends GetPromotionResponse>
    implements $GetPromotionResponseCopyWith<$Res> {
  _$GetPromotionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PromotionMetadata,
    ) as $Val);
  }

  /// Create a copy of GetPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PromotionMetadataCopyWith<$Res> get metadata {
    return $PromotionMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetPromotionResponseImplCopyWith<$Res>
    implements $GetPromotionResponseCopyWith<$Res> {
  factory _$$GetPromotionResponseImplCopyWith(_$GetPromotionResponseImpl value,
          $Res Function(_$GetPromotionResponseImpl) then) =
      __$$GetPromotionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromotionMetadata metadata});

  @override
  $PromotionMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$GetPromotionResponseImplCopyWithImpl<$Res>
    extends _$GetPromotionResponseCopyWithImpl<$Res, _$GetPromotionResponseImpl>
    implements _$$GetPromotionResponseImplCopyWith<$Res> {
  __$$GetPromotionResponseImplCopyWithImpl(_$GetPromotionResponseImpl _value,
      $Res Function(_$GetPromotionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
  }) {
    return _then(_$GetPromotionResponseImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PromotionMetadata,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetPromotionResponseImpl implements _GetPromotionResponse {
  const _$GetPromotionResponseImpl({required this.metadata});

  factory _$GetPromotionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetPromotionResponseImplFromJson(json);

  @override
  final PromotionMetadata metadata;

  @override
  String toString() {
    return 'GetPromotionResponse(metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionResponseImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metadata);

  /// Create a copy of GetPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionResponseImplCopyWith<_$GetPromotionResponseImpl>
      get copyWith =>
          __$$GetPromotionResponseImplCopyWithImpl<_$GetPromotionResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetPromotionResponseImplToJson(
      this,
    );
  }
}

abstract class _GetPromotionResponse implements GetPromotionResponse {
  const factory _GetPromotionResponse(
      {required final PromotionMetadata metadata}) = _$GetPromotionResponseImpl;

  factory _GetPromotionResponse.fromJson(Map<String, dynamic> json) =
      _$GetPromotionResponseImpl.fromJson;

  @override
  PromotionMetadata get metadata;

  /// Create a copy of GetPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPromotionResponseImplCopyWith<_$GetPromotionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
