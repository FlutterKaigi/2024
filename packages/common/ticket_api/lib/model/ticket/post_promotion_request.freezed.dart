// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_promotion_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPromotionRequest _$PostPromotionRequestFromJson(Map<String, dynamic> json) {
  return _PostPromotionRequest.fromJson(json);
}

/// @nodoc
mixin _$PostPromotionRequest {
  PromotionMetadata get metadata => throw _privateConstructorUsedError;
  int get maxRedemptions => throw _privateConstructorUsedError;

  /// Serializes this PostPromotionRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPromotionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPromotionRequestCopyWith<PostPromotionRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPromotionRequestCopyWith<$Res> {
  factory $PostPromotionRequestCopyWith(PostPromotionRequest value,
          $Res Function(PostPromotionRequest) then) =
      _$PostPromotionRequestCopyWithImpl<$Res, PostPromotionRequest>;
  @useResult
  $Res call({PromotionMetadata metadata, int maxRedemptions});

  $PromotionMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class _$PostPromotionRequestCopyWithImpl<$Res,
        $Val extends PostPromotionRequest>
    implements $PostPromotionRequestCopyWith<$Res> {
  _$PostPromotionRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPromotionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? maxRedemptions = null,
  }) {
    return _then(_value.copyWith(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PromotionMetadata,
      maxRedemptions: null == maxRedemptions
          ? _value.maxRedemptions
          : maxRedemptions // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of PostPromotionRequest
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
abstract class _$$PostPromotionRequestImplCopyWith<$Res>
    implements $PostPromotionRequestCopyWith<$Res> {
  factory _$$PostPromotionRequestImplCopyWith(_$PostPromotionRequestImpl value,
          $Res Function(_$PostPromotionRequestImpl) then) =
      __$$PostPromotionRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PromotionMetadata metadata, int maxRedemptions});

  @override
  $PromotionMetadataCopyWith<$Res> get metadata;
}

/// @nodoc
class __$$PostPromotionRequestImplCopyWithImpl<$Res>
    extends _$PostPromotionRequestCopyWithImpl<$Res, _$PostPromotionRequestImpl>
    implements _$$PostPromotionRequestImplCopyWith<$Res> {
  __$$PostPromotionRequestImplCopyWithImpl(_$PostPromotionRequestImpl _value,
      $Res Function(_$PostPromotionRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPromotionRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? metadata = null,
    Object? maxRedemptions = null,
  }) {
    return _then(_$PostPromotionRequestImpl(
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as PromotionMetadata,
      maxRedemptions: null == maxRedemptions
          ? _value.maxRedemptions
          : maxRedemptions // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPromotionRequestImpl implements _PostPromotionRequest {
  const _$PostPromotionRequestImpl(
      {required this.metadata, required this.maxRedemptions})
      : assert(maxRedemptions >= 0,
            'maxRedemptions must be greater than or equal to 0');

  factory _$PostPromotionRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPromotionRequestImplFromJson(json);

  @override
  final PromotionMetadata metadata;
  @override
  final int maxRedemptions;

  @override
  String toString() {
    return 'PostPromotionRequest(metadata: $metadata, maxRedemptions: $maxRedemptions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPromotionRequestImpl &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.maxRedemptions, maxRedemptions) ||
                other.maxRedemptions == maxRedemptions));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, metadata, maxRedemptions);

  /// Create a copy of PostPromotionRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPromotionRequestImplCopyWith<_$PostPromotionRequestImpl>
      get copyWith =>
          __$$PostPromotionRequestImplCopyWithImpl<_$PostPromotionRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPromotionRequestImplToJson(
      this,
    );
  }
}

abstract class _PostPromotionRequest implements PostPromotionRequest {
  const factory _PostPromotionRequest(
      {required final PromotionMetadata metadata,
      required final int maxRedemptions}) = _$PostPromotionRequestImpl;

  factory _PostPromotionRequest.fromJson(Map<String, dynamic> json) =
      _$PostPromotionRequestImpl.fromJson;

  @override
  PromotionMetadata get metadata;
  @override
  int get maxRedemptions;

  /// Create a copy of PostPromotionRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPromotionRequestImplCopyWith<_$PostPromotionRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
