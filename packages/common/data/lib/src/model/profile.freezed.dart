// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool? get isAdult => throw _privateConstructorUsedError;
  bool? get isPublished => throw _privateConstructorUsedError;

  /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
  Future<Uint8List?> Function()? get userAvatarFetch =>
      throw _privateConstructorUsedError;

  /// Googleアカウントのアバター画像のURL
  Uri? get googleAvatarUri => throw _privateConstructorUsedError;
  String? get avatarName => throw _privateConstructorUsedError;

  /// Serializes this Profile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String id,
      String name,
      Role role,
      String comment,
      DateTime createdAt,
      bool? isAdult,
      bool? isPublished,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      Future<Uint8List?> Function()? userAvatarFetch,
      Uri? googleAvatarUri,
      String? avatarName});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? comment = null,
    Object? createdAt = null,
    Object? isAdult = freezed,
    Object? isPublished = freezed,
    Object? userAvatarFetch = freezed,
    Object? googleAvatarUri = freezed,
    Object? avatarName = freezed,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAvatarFetch: freezed == userAvatarFetch
          ? _value.userAvatarFetch
          : userAvatarFetch // ignore: cast_nullable_to_non_nullable
              as Future<Uint8List?> Function()?,
      googleAvatarUri: freezed == googleAvatarUri
          ? _value.googleAvatarUri
          : googleAvatarUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      avatarName: freezed == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileImplCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$ProfileImplCopyWith(
          _$ProfileImpl value, $Res Function(_$ProfileImpl) then) =
      __$$ProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Role role,
      String comment,
      DateTime createdAt,
      bool? isAdult,
      bool? isPublished,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      Future<Uint8List?> Function()? userAvatarFetch,
      Uri? googleAvatarUri,
      String? avatarName});
}

/// @nodoc
class __$$ProfileImplCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$ProfileImpl>
    implements _$$ProfileImplCopyWith<$Res> {
  __$$ProfileImplCopyWithImpl(
      _$ProfileImpl _value, $Res Function(_$ProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? comment = null,
    Object? createdAt = null,
    Object? isAdult = freezed,
    Object? isPublished = freezed,
    Object? userAvatarFetch = freezed,
    Object? googleAvatarUri = freezed,
    Object? avatarName = freezed,
  }) {
    return _then(_$ProfileImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAvatarFetch: freezed == userAvatarFetch
          ? _value.userAvatarFetch
          : userAvatarFetch // ignore: cast_nullable_to_non_nullable
              as Future<Uint8List?> Function()?,
      googleAvatarUri: freezed == googleAvatarUri
          ? _value.googleAvatarUri
          : googleAvatarUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      avatarName: freezed == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileImpl implements _Profile {
  const _$ProfileImpl(
      {required this.id,
      required this.name,
      required this.role,
      required this.comment,
      required this.createdAt,
      required this.isAdult,
      required this.isPublished,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      this.userAvatarFetch,
      this.googleAvatarUri,
      this.avatarName});

  factory _$ProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Role role;
  @override
  final String comment;
  @override
  final DateTime createdAt;
  @override
  final bool? isAdult;
  @override
  final bool? isPublished;

  /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
  final Future<Uint8List?> Function()? userAvatarFetch;

  /// Googleアカウントのアバター画像のURL
  @override
  final Uri? googleAvatarUri;
  @override
  final String? avatarName;

  @override
  String toString() {
    return 'Profile(id: $id, name: $name, role: $role, comment: $comment, createdAt: $createdAt, isAdult: $isAdult, isPublished: $isPublished, userAvatarFetch: $userAvatarFetch, googleAvatarUri: $googleAvatarUri, avatarName: $avatarName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished) &&
            (identical(other.userAvatarFetch, userAvatarFetch) ||
                other.userAvatarFetch == userAvatarFetch) &&
            (identical(other.googleAvatarUri, googleAvatarUri) ||
                other.googleAvatarUri == googleAvatarUri) &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      role,
      comment,
      createdAt,
      isAdult,
      isPublished,
      userAvatarFetch,
      googleAvatarUri,
      avatarName);

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      __$$ProfileImplCopyWithImpl<_$ProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileImplToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  const factory _Profile(
      {required final String id,
      required final String name,
      required final Role role,
      required final String comment,
      required final DateTime createdAt,
      required final bool? isAdult,
      required final bool? isPublished,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      final Future<Uint8List?> Function()? userAvatarFetch,
      final Uri? googleAvatarUri,
      final String? avatarName}) = _$ProfileImpl;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$ProfileImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Role get role;
  @override
  String get comment;
  @override
  DateTime get createdAt;
  @override
  bool? get isAdult;
  @override
  bool? get isPublished;

  /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
  Future<Uint8List?> Function()? get userAvatarFetch;

  /// Googleアカウントのアバター画像のURL
  @override
  Uri? get googleAvatarUri;
  @override
  String? get avatarName;

  /// Create a copy of Profile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileImplCopyWith<_$ProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileTable _$ProfileTableFromJson(Map<String, dynamic> json) {
  return _ProfileTable.fromJson(json);
}

/// @nodoc
mixin _$ProfileTable {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String? get avatarName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Uri? get avatarUrl => throw _privateConstructorUsedError;
  bool? get isAdult => throw _privateConstructorUsedError;
  bool? get isPublished => throw _privateConstructorUsedError;

  /// Serializes this ProfileTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileTableCopyWith<ProfileTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileTableCopyWith<$Res> {
  factory $ProfileTableCopyWith(
          ProfileTable value, $Res Function(ProfileTable) then) =
      _$ProfileTableCopyWithImpl<$Res, ProfileTable>;
  @useResult
  $Res call(
      {String id,
      String name,
      Role role,
      String comment,
      String? avatarName,
      DateTime createdAt,
      Uri? avatarUrl,
      bool? isAdult,
      bool? isPublished});
}

/// @nodoc
class _$ProfileTableCopyWithImpl<$Res, $Val extends ProfileTable>
    implements $ProfileTableCopyWith<$Res> {
  _$ProfileTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? comment = null,
    Object? avatarName = freezed,
    Object? createdAt = null,
    Object? avatarUrl = freezed,
    Object? isAdult = freezed,
    Object? isPublished = freezed,
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
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      avatarName: freezed == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileTableImplCopyWith<$Res>
    implements $ProfileTableCopyWith<$Res> {
  factory _$$ProfileTableImplCopyWith(
          _$ProfileTableImpl value, $Res Function(_$ProfileTableImpl) then) =
      __$$ProfileTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      Role role,
      String comment,
      String? avatarName,
      DateTime createdAt,
      Uri? avatarUrl,
      bool? isAdult,
      bool? isPublished});
}

/// @nodoc
class __$$ProfileTableImplCopyWithImpl<$Res>
    extends _$ProfileTableCopyWithImpl<$Res, _$ProfileTableImpl>
    implements _$$ProfileTableImplCopyWith<$Res> {
  __$$ProfileTableImplCopyWithImpl(
      _$ProfileTableImpl _value, $Res Function(_$ProfileTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? role = null,
    Object? comment = null,
    Object? avatarName = freezed,
    Object? createdAt = null,
    Object? avatarUrl = freezed,
    Object? isAdult = freezed,
    Object? isPublished = freezed,
  }) {
    return _then(_$ProfileTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      avatarName: freezed == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      avatarUrl: freezed == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPublished: freezed == isPublished
          ? _value.isPublished
          : isPublished // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileTableImpl implements _ProfileTable {
  const _$ProfileTableImpl(
      {required this.id,
      required this.name,
      required this.role,
      required this.comment,
      required this.avatarName,
      required this.createdAt,
      required this.avatarUrl,
      required this.isAdult,
      required this.isPublished});

  factory _$ProfileTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileTableImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final Role role;
  @override
  final String comment;
  @override
  final String? avatarName;
  @override
  final DateTime createdAt;
  @override
  final Uri? avatarUrl;
  @override
  final bool? isAdult;
  @override
  final bool? isPublished;

  @override
  String toString() {
    return 'ProfileTable(id: $id, name: $name, role: $role, comment: $comment, avatarName: $avatarName, createdAt: $createdAt, avatarUrl: $avatarUrl, isAdult: $isAdult, isPublished: $isPublished)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.avatarName, avatarName) ||
                other.avatarName == avatarName) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult) &&
            (identical(other.isPublished, isPublished) ||
                other.isPublished == isPublished));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, role, comment,
      avatarName, createdAt, avatarUrl, isAdult, isPublished);

  /// Create a copy of ProfileTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileTableImplCopyWith<_$ProfileTableImpl> get copyWith =>
      __$$ProfileTableImplCopyWithImpl<_$ProfileTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileTableImplToJson(
      this,
    );
  }
}

abstract class _ProfileTable implements ProfileTable {
  const factory _ProfileTable(
      {required final String id,
      required final String name,
      required final Role role,
      required final String comment,
      required final String? avatarName,
      required final DateTime createdAt,
      required final Uri? avatarUrl,
      required final bool? isAdult,
      required final bool? isPublished}) = _$ProfileTableImpl;

  factory _ProfileTable.fromJson(Map<String, dynamic> json) =
      _$ProfileTableImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  Role get role;
  @override
  String get comment;
  @override
  String? get avatarName;
  @override
  DateTime get createdAt;
  @override
  Uri? get avatarUrl;
  @override
  bool? get isAdult;
  @override
  bool? get isPublished;

  /// Create a copy of ProfileTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileTableImplCopyWith<_$ProfileTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
