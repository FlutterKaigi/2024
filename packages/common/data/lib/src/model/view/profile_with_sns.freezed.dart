// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_with_sns.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProfileWithSns _$ProfileWithSnsFromJson(Map<String, dynamic> json) {
  return _ProfileWithSns.fromJson(json);
}

/// @nodoc
mixin _$ProfileWithSns {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get avatarUrl => throw _privateConstructorUsedError;
  String get avatarName => throw _privateConstructorUsedError;
  List<ProfileSocialNetworkingService> get snsAccounts =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileWithSns to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileWithSns
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileWithSnsCopyWith<ProfileWithSns> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWithSnsCopyWith<$Res> {
  factory $ProfileWithSnsCopyWith(
          ProfileWithSns value, $Res Function(ProfileWithSns) then) =
      _$ProfileWithSnsCopyWithImpl<$Res, ProfileWithSns>;
  @useResult
  $Res call(
      {String id,
      String name,
      String avatarUrl,
      String avatarName,
      List<ProfileSocialNetworkingService> snsAccounts});
}

/// @nodoc
class _$ProfileWithSnsCopyWithImpl<$Res, $Val extends ProfileWithSns>
    implements $ProfileWithSnsCopyWith<$Res> {
  _$ProfileWithSnsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileWithSns
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? avatarName = null,
    Object? snsAccounts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String,
      snsAccounts: null == snsAccounts
          ? _value.snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<ProfileSocialNetworkingService>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileWithSnsImplCopyWith<$Res>
    implements $ProfileWithSnsCopyWith<$Res> {
  factory _$$ProfileWithSnsImplCopyWith(_$ProfileWithSnsImpl value,
          $Res Function(_$ProfileWithSnsImpl) then) =
      __$$ProfileWithSnsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String avatarUrl,
      String avatarName,
      List<ProfileSocialNetworkingService> snsAccounts});
}

/// @nodoc
class __$$ProfileWithSnsImplCopyWithImpl<$Res>
    extends _$ProfileWithSnsCopyWithImpl<$Res, _$ProfileWithSnsImpl>
    implements _$$ProfileWithSnsImplCopyWith<$Res> {
  __$$ProfileWithSnsImplCopyWithImpl(
      _$ProfileWithSnsImpl _value, $Res Function(_$ProfileWithSnsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileWithSns
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? avatarUrl = null,
    Object? avatarName = null,
    Object? snsAccounts = null,
  }) {
    return _then(_$ProfileWithSnsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String,
      avatarName: null == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String,
      snsAccounts: null == snsAccounts
          ? _value._snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<ProfileSocialNetworkingService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWithSnsImpl implements _ProfileWithSns {
  const _$ProfileWithSnsImpl(
      {required this.id,
      required this.name,
      required this.avatarUrl,
      required this.avatarName,
      required final List<ProfileSocialNetworkingService> snsAccounts})
      : _snsAccounts = snsAccounts;

  factory _$ProfileWithSnsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileWithSnsImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String avatarUrl;
  @override
  final String avatarName;
  final List<ProfileSocialNetworkingService> _snsAccounts;
  @override
  List<ProfileSocialNetworkingService> get snsAccounts {
    if (_snsAccounts is EqualUnmodifiableListView) return _snsAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snsAccounts);
  }

  @override
  String toString() {
    return 'ProfileWithSns(id: $id, name: $name, avatarUrl: $avatarUrl, avatarName: $avatarName, snsAccounts: $snsAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWithSnsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName) &&
            const DeepCollectionEquality()
                .equals(other._snsAccounts, _snsAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, avatarUrl, avatarName,
      const DeepCollectionEquality().hash(_snsAccounts));

  /// Create a copy of ProfileWithSns
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileWithSnsImplCopyWith<_$ProfileWithSnsImpl> get copyWith =>
      __$$ProfileWithSnsImplCopyWithImpl<_$ProfileWithSnsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileWithSnsImplToJson(
      this,
    );
  }
}

abstract class _ProfileWithSns implements ProfileWithSns {
  const factory _ProfileWithSns(
          {required final String id,
          required final String name,
          required final String avatarUrl,
          required final String avatarName,
          required final List<ProfileSocialNetworkingService> snsAccounts}) =
      _$ProfileWithSnsImpl;

  factory _ProfileWithSns.fromJson(Map<String, dynamic> json) =
      _$ProfileWithSnsImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get avatarUrl;
  @override
  String get avatarName;
  @override
  List<ProfileSocialNetworkingService> get snsAccounts;

  /// Create a copy of ProfileWithSns
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWithSnsImplCopyWith<_$ProfileWithSnsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
