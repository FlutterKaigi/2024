// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_minimum_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppMinimumVersion _$AppMinimumVersionFromJson(Map<String, dynamic> json) {
  return _AppMinimumVersion.fromJson(json);
}

/// @nodoc
mixin _$AppMinimumVersion {
  AppPlatform get platform => throw _privateConstructorUsedError;
  @VersionConverter()
  @JsonKey(name: 'app_version_text')
  Version get version => throw _privateConstructorUsedError;

  /// Serializes this AppMinimumVersion to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppMinimumVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppMinimumVersionCopyWith<AppMinimumVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMinimumVersionCopyWith<$Res> {
  factory $AppMinimumVersionCopyWith(
          AppMinimumVersion value, $Res Function(AppMinimumVersion) then) =
      _$AppMinimumVersionCopyWithImpl<$Res, AppMinimumVersion>;
  @useResult
  $Res call(
      {AppPlatform platform,
      @VersionConverter() @JsonKey(name: 'app_version_text') Version version});
}

/// @nodoc
class _$AppMinimumVersionCopyWithImpl<$Res, $Val extends AppMinimumVersion>
    implements $AppMinimumVersionCopyWith<$Res> {
  _$AppMinimumVersionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppMinimumVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as AppPlatform,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppMinimumVersionImplCopyWith<$Res>
    implements $AppMinimumVersionCopyWith<$Res> {
  factory _$$AppMinimumVersionImplCopyWith(_$AppMinimumVersionImpl value,
          $Res Function(_$AppMinimumVersionImpl) then) =
      __$$AppMinimumVersionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppPlatform platform,
      @VersionConverter() @JsonKey(name: 'app_version_text') Version version});
}

/// @nodoc
class __$$AppMinimumVersionImplCopyWithImpl<$Res>
    extends _$AppMinimumVersionCopyWithImpl<$Res, _$AppMinimumVersionImpl>
    implements _$$AppMinimumVersionImplCopyWith<$Res> {
  __$$AppMinimumVersionImplCopyWithImpl(_$AppMinimumVersionImpl _value,
      $Res Function(_$AppMinimumVersionImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppMinimumVersion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? version = null,
  }) {
    return _then(_$AppMinimumVersionImpl(
      platform: null == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as AppPlatform,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as Version,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppMinimumVersionImpl implements _AppMinimumVersion {
  const _$AppMinimumVersionImpl(
      {required this.platform,
      @VersionConverter()
      @JsonKey(name: 'app_version_text')
      required this.version});

  factory _$AppMinimumVersionImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppMinimumVersionImplFromJson(json);

  @override
  final AppPlatform platform;
  @override
  @VersionConverter()
  @JsonKey(name: 'app_version_text')
  final Version version;

  @override
  String toString() {
    return 'AppMinimumVersion(platform: $platform, version: $version)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMinimumVersionImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, platform, version);

  /// Create a copy of AppMinimumVersion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMinimumVersionImplCopyWith<_$AppMinimumVersionImpl> get copyWith =>
      __$$AppMinimumVersionImplCopyWithImpl<_$AppMinimumVersionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppMinimumVersionImplToJson(
      this,
    );
  }
}

abstract class _AppMinimumVersion implements AppMinimumVersion {
  const factory _AppMinimumVersion(
      {required final AppPlatform platform,
      @VersionConverter()
      @JsonKey(name: 'app_version_text')
      required final Version version}) = _$AppMinimumVersionImpl;

  factory _AppMinimumVersion.fromJson(Map<String, dynamic> json) =
      _$AppMinimumVersionImpl.fromJson;

  @override
  AppPlatform get platform;
  @override
  @VersionConverter()
  @JsonKey(name: 'app_version_text')
  Version get version;

  /// Create a copy of AppMinimumVersion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppMinimumVersionImplCopyWith<_$AppMinimumVersionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
