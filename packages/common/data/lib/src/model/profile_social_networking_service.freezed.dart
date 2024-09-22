// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_social_networking_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileSocialNetworkingService _$ProfileSocialNetworkingServiceFromJson(
    Map<String, dynamic> json) {
  return _ProfileSocialNetworkingService.fromJson(json);
}

/// @nodoc
mixin _$ProfileSocialNetworkingService {
  String get id => throw _privateConstructorUsedError;
  SnsType get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this ProfileSocialNetworkingService to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileSocialNetworkingService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileSocialNetworkingServiceCopyWith<ProfileSocialNetworkingService>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileSocialNetworkingServiceCopyWith<$Res> {
  factory $ProfileSocialNetworkingServiceCopyWith(
          ProfileSocialNetworkingService value,
          $Res Function(ProfileSocialNetworkingService) then) =
      _$ProfileSocialNetworkingServiceCopyWithImpl<$Res,
          ProfileSocialNetworkingService>;
  @useResult
  $Res call({String id, SnsType type, String value});
}

/// @nodoc
class _$ProfileSocialNetworkingServiceCopyWithImpl<$Res,
        $Val extends ProfileSocialNetworkingService>
    implements $ProfileSocialNetworkingServiceCopyWith<$Res> {
  _$ProfileSocialNetworkingServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileSocialNetworkingService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileSocialNetworkingServiceImplCopyWith<$Res>
    implements $ProfileSocialNetworkingServiceCopyWith<$Res> {
  factory _$$ProfileSocialNetworkingServiceImplCopyWith(
          _$ProfileSocialNetworkingServiceImpl value,
          $Res Function(_$ProfileSocialNetworkingServiceImpl) then) =
      __$$ProfileSocialNetworkingServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, SnsType type, String value});
}

/// @nodoc
class __$$ProfileSocialNetworkingServiceImplCopyWithImpl<$Res>
    extends _$ProfileSocialNetworkingServiceCopyWithImpl<$Res,
        _$ProfileSocialNetworkingServiceImpl>
    implements _$$ProfileSocialNetworkingServiceImplCopyWith<$Res> {
  __$$ProfileSocialNetworkingServiceImplCopyWithImpl(
      _$ProfileSocialNetworkingServiceImpl _value,
      $Res Function(_$ProfileSocialNetworkingServiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileSocialNetworkingService
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$ProfileSocialNetworkingServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileSocialNetworkingServiceImpl
    implements _ProfileSocialNetworkingService {
  const _$ProfileSocialNetworkingServiceImpl(
      {required this.id, required this.type, required this.value});

  factory _$ProfileSocialNetworkingServiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ProfileSocialNetworkingServiceImplFromJson(json);

  @override
  final String id;
  @override
  final SnsType type;
  @override
  final String value;

  @override
  String toString() {
    return 'ProfileSocialNetworkingService(id: $id, type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSocialNetworkingServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, type, value);

  /// Create a copy of ProfileSocialNetworkingService
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileSocialNetworkingServiceImplCopyWith<
          _$ProfileSocialNetworkingServiceImpl>
      get copyWith => __$$ProfileSocialNetworkingServiceImplCopyWithImpl<
          _$ProfileSocialNetworkingServiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileSocialNetworkingServiceImplToJson(
      this,
    );
  }
}

abstract class _ProfileSocialNetworkingService
    implements ProfileSocialNetworkingService {
  const factory _ProfileSocialNetworkingService(
      {required final String id,
      required final SnsType type,
      required final String value}) = _$ProfileSocialNetworkingServiceImpl;

  factory _ProfileSocialNetworkingService.fromJson(Map<String, dynamic> json) =
      _$ProfileSocialNetworkingServiceImpl.fromJson;

  @override
  String get id;
  @override
  SnsType get type;
  @override
  String get value;

  /// Create a copy of ProfileSocialNetworkingService
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileSocialNetworkingServiceImplCopyWith<
          _$ProfileSocialNetworkingServiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
