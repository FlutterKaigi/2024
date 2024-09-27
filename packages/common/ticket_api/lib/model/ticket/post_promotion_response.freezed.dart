// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_promotion_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostPromotionResponse _$PostPromotionResponseFromJson(
    Map<String, dynamic> json) {
  return _PostPromotionResponse.fromJson(json);
}

/// @nodoc
mixin _$PostPromotionResponse {
  String get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  /// Serializes this PostPromotionResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostPromotionResponseCopyWith<PostPromotionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostPromotionResponseCopyWith<$Res> {
  factory $PostPromotionResponseCopyWith(PostPromotionResponse value,
          $Res Function(PostPromotionResponse) then) =
      _$PostPromotionResponseCopyWithImpl<$Res, PostPromotionResponse>;
  @useResult
  $Res call({String id, String code});
}

/// @nodoc
class _$PostPromotionResponseCopyWithImpl<$Res,
        $Val extends PostPromotionResponse>
    implements $PostPromotionResponseCopyWith<$Res> {
  _$PostPromotionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostPromotionResponseImplCopyWith<$Res>
    implements $PostPromotionResponseCopyWith<$Res> {
  factory _$$PostPromotionResponseImplCopyWith(
          _$PostPromotionResponseImpl value,
          $Res Function(_$PostPromotionResponseImpl) then) =
      __$$PostPromotionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String code});
}

/// @nodoc
class __$$PostPromotionResponseImplCopyWithImpl<$Res>
    extends _$PostPromotionResponseCopyWithImpl<$Res,
        _$PostPromotionResponseImpl>
    implements _$$PostPromotionResponseImplCopyWith<$Res> {
  __$$PostPromotionResponseImplCopyWithImpl(_$PostPromotionResponseImpl _value,
      $Res Function(_$PostPromotionResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? code = null,
  }) {
    return _then(_$PostPromotionResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostPromotionResponseImpl implements _PostPromotionResponse {
  const _$PostPromotionResponseImpl({required this.id, required this.code});

  factory _$PostPromotionResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostPromotionResponseImplFromJson(json);

  @override
  final String id;
  @override
  final String code;

  @override
  String toString() {
    return 'PostPromotionResponse(id: $id, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostPromotionResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, code);

  /// Create a copy of PostPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostPromotionResponseImplCopyWith<_$PostPromotionResponseImpl>
      get copyWith => __$$PostPromotionResponseImplCopyWithImpl<
          _$PostPromotionResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostPromotionResponseImplToJson(
      this,
    );
  }
}

abstract class _PostPromotionResponse implements PostPromotionResponse {
  const factory _PostPromotionResponse(
      {required final String id,
      required final String code}) = _$PostPromotionResponseImpl;

  factory _PostPromotionResponse.fromJson(Map<String, dynamic> json) =
      _$PostPromotionResponseImpl.fromJson;

  @override
  String get id;
  @override
  String get code;

  /// Create a copy of PostPromotionResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostPromotionResponseImplCopyWith<_$PostPromotionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
