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
  Role get role => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Googleアカウントのアバター画像のURL
  Uri? get googleAvatarUri => throw _privateConstructorUsedError;
  List<ProfileSocialNetworkingService> get snsAccounts =>
      throw _privateConstructorUsedError;
  bool? get isAdult => throw _privateConstructorUsedError;

  /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
  Future<Uint8List?> Function()? get userAvatarFetch =>
      throw _privateConstructorUsedError;
  String? get avatarName => throw _privateConstructorUsedError;

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
      Role role,
      String comment,
      DateTime createdAt,
      Uri? googleAvatarUri,
      List<ProfileSocialNetworkingService> snsAccounts,
      bool? isAdult,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      Future<Uint8List?> Function()? userAvatarFetch,
      String? avatarName});
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
    Object? role = null,
    Object? comment = null,
    Object? createdAt = null,
    Object? googleAvatarUri = freezed,
    Object? snsAccounts = null,
    Object? isAdult = freezed,
    Object? userAvatarFetch = freezed,
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
      googleAvatarUri: freezed == googleAvatarUri
          ? _value.googleAvatarUri
          : googleAvatarUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      snsAccounts: null == snsAccounts
          ? _value.snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<ProfileSocialNetworkingService>,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAvatarFetch: freezed == userAvatarFetch
          ? _value.userAvatarFetch
          : userAvatarFetch // ignore: cast_nullable_to_non_nullable
              as Future<Uint8List?> Function()?,
      avatarName: freezed == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String?,
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
      Role role,
      String comment,
      DateTime createdAt,
      Uri? googleAvatarUri,
      List<ProfileSocialNetworkingService> snsAccounts,
      bool? isAdult,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      Future<Uint8List?> Function()? userAvatarFetch,
      String? avatarName});
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
    Object? role = null,
    Object? comment = null,
    Object? createdAt = null,
    Object? googleAvatarUri = freezed,
    Object? snsAccounts = null,
    Object? isAdult = freezed,
    Object? userAvatarFetch = freezed,
    Object? avatarName = freezed,
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
      googleAvatarUri: freezed == googleAvatarUri
          ? _value.googleAvatarUri
          : googleAvatarUri // ignore: cast_nullable_to_non_nullable
              as Uri?,
      snsAccounts: null == snsAccounts
          ? _value._snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<ProfileSocialNetworkingService>,
      isAdult: freezed == isAdult
          ? _value.isAdult
          : isAdult // ignore: cast_nullable_to_non_nullable
              as bool?,
      userAvatarFetch: freezed == userAvatarFetch
          ? _value.userAvatarFetch
          : userAvatarFetch // ignore: cast_nullable_to_non_nullable
              as Future<Uint8List?> Function()?,
      avatarName: freezed == avatarName
          ? _value.avatarName
          : avatarName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWithSnsImpl implements _ProfileWithSns {
  const _$ProfileWithSnsImpl(
      {required this.id,
      required this.name,
      required this.role,
      required this.comment,
      required this.createdAt,
      required this.googleAvatarUri,
      required final List<ProfileSocialNetworkingService> snsAccounts,
      required this.isAdult,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      this.userAvatarFetch,
      this.avatarName})
      : _snsAccounts = snsAccounts;

  factory _$ProfileWithSnsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileWithSnsImplFromJson(json);

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

  /// Googleアカウントのアバター画像のURL
  @override
  final Uri? googleAvatarUri;
  final List<ProfileSocialNetworkingService> _snsAccounts;
  @override
  List<ProfileSocialNetworkingService> get snsAccounts {
    if (_snsAccounts is EqualUnmodifiableListView) return _snsAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snsAccounts);
  }

  @override
  final bool? isAdult;

  /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
  final Future<Uint8List?> Function()? userAvatarFetch;
  @override
  final String? avatarName;

  @override
  String toString() {
    return 'ProfileWithSns(id: $id, name: $name, role: $role, comment: $comment, createdAt: $createdAt, googleAvatarUri: $googleAvatarUri, snsAccounts: $snsAccounts, isAdult: $isAdult, userAvatarFetch: $userAvatarFetch, avatarName: $avatarName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWithSnsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.googleAvatarUri, googleAvatarUri) ||
                other.googleAvatarUri == googleAvatarUri) &&
            const DeepCollectionEquality()
                .equals(other._snsAccounts, _snsAccounts) &&
            (identical(other.isAdult, isAdult) || other.isAdult == isAdult) &&
            (identical(other.userAvatarFetch, userAvatarFetch) ||
                other.userAvatarFetch == userAvatarFetch) &&
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
      googleAvatarUri,
      const DeepCollectionEquality().hash(_snsAccounts),
      isAdult,
      userAvatarFetch,
      avatarName);

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
      required final Role role,
      required final String comment,
      required final DateTime createdAt,
      required final Uri? googleAvatarUri,
      required final List<ProfileSocialNetworkingService> snsAccounts,
      required final bool? isAdult,
      @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
      final Future<Uint8List?> Function()? userAvatarFetch,
      final String? avatarName}) = _$ProfileWithSnsImpl;

  factory _ProfileWithSns.fromJson(Map<String, dynamic> json) =
      _$ProfileWithSnsImpl.fromJson;

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

  /// Googleアカウントのアバター画像のURL
  @override
  Uri? get googleAvatarUri;
  @override
  List<ProfileSocialNetworkingService> get snsAccounts;
  @override
  bool? get isAdult;

  /// ユーザがセットしたアバター画像のバイナリデータを取得する関数
  @override
  @JsonKey(includeFromJson: false, includeToJson: false, defaultValue: null)
  Future<Uint8List?> Function()? get userAvatarFetch;
  @override
  String? get avatarName;

  /// Create a copy of ProfileWithSns
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWithSnsImplCopyWith<_$ProfileWithSnsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileWithSnsView _$ProfileWithSnsViewFromJson(Map<String, dynamic> json) {
  return _ProfileWithSnsView.fromJson(json);
}

/// @nodoc
mixin _$ProfileWithSnsView {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  String? get avatarName => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  Uri? get avatarUrl => throw _privateConstructorUsedError;
  bool? get isAdult => throw _privateConstructorUsedError;
  List<ProfileSocialNetworkingService> get snsAccounts =>
      throw _privateConstructorUsedError;

  /// Serializes this ProfileWithSnsView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProfileWithSnsView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileWithSnsViewCopyWith<ProfileWithSnsView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileWithSnsViewCopyWith<$Res> {
  factory $ProfileWithSnsViewCopyWith(
          ProfileWithSnsView value, $Res Function(ProfileWithSnsView) then) =
      _$ProfileWithSnsViewCopyWithImpl<$Res, ProfileWithSnsView>;
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
      List<ProfileSocialNetworkingService> snsAccounts});
}

/// @nodoc
class _$ProfileWithSnsViewCopyWithImpl<$Res, $Val extends ProfileWithSnsView>
    implements $ProfileWithSnsViewCopyWith<$Res> {
  _$ProfileWithSnsViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileWithSnsView
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
      snsAccounts: null == snsAccounts
          ? _value.snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<ProfileSocialNetworkingService>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileWithSnsViewImplCopyWith<$Res>
    implements $ProfileWithSnsViewCopyWith<$Res> {
  factory _$$ProfileWithSnsViewImplCopyWith(_$ProfileWithSnsViewImpl value,
          $Res Function(_$ProfileWithSnsViewImpl) then) =
      __$$ProfileWithSnsViewImplCopyWithImpl<$Res>;
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
      List<ProfileSocialNetworkingService> snsAccounts});
}

/// @nodoc
class __$$ProfileWithSnsViewImplCopyWithImpl<$Res>
    extends _$ProfileWithSnsViewCopyWithImpl<$Res, _$ProfileWithSnsViewImpl>
    implements _$$ProfileWithSnsViewImplCopyWith<$Res> {
  __$$ProfileWithSnsViewImplCopyWithImpl(_$ProfileWithSnsViewImpl _value,
      $Res Function(_$ProfileWithSnsViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileWithSnsView
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
    Object? snsAccounts = null,
  }) {
    return _then(_$ProfileWithSnsViewImpl(
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
      snsAccounts: null == snsAccounts
          ? _value._snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<ProfileSocialNetworkingService>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileWithSnsViewImpl implements _ProfileWithSnsView {
  const _$ProfileWithSnsViewImpl(
      {required this.id,
      required this.name,
      required this.role,
      required this.comment,
      required this.avatarName,
      required this.createdAt,
      required this.avatarUrl,
      required this.isAdult,
      required final List<ProfileSocialNetworkingService> snsAccounts})
      : _snsAccounts = snsAccounts;

  factory _$ProfileWithSnsViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileWithSnsViewImplFromJson(json);

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
  final List<ProfileSocialNetworkingService> _snsAccounts;
  @override
  List<ProfileSocialNetworkingService> get snsAccounts {
    if (_snsAccounts is EqualUnmodifiableListView) return _snsAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snsAccounts);
  }

  @override
  String toString() {
    return 'ProfileWithSnsView(id: $id, name: $name, role: $role, comment: $comment, avatarName: $avatarName, createdAt: $createdAt, avatarUrl: $avatarUrl, isAdult: $isAdult, snsAccounts: $snsAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileWithSnsViewImpl &&
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
            const DeepCollectionEquality()
                .equals(other._snsAccounts, _snsAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      role,
      comment,
      avatarName,
      createdAt,
      avatarUrl,
      isAdult,
      const DeepCollectionEquality().hash(_snsAccounts));

  /// Create a copy of ProfileWithSnsView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileWithSnsViewImplCopyWith<_$ProfileWithSnsViewImpl> get copyWith =>
      __$$ProfileWithSnsViewImplCopyWithImpl<_$ProfileWithSnsViewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileWithSnsViewImplToJson(
      this,
    );
  }
}

abstract class _ProfileWithSnsView implements ProfileWithSnsView {
  const factory _ProfileWithSnsView(
          {required final String id,
          required final String name,
          required final Role role,
          required final String comment,
          required final String? avatarName,
          required final DateTime createdAt,
          required final Uri? avatarUrl,
          required final bool? isAdult,
          required final List<ProfileSocialNetworkingService> snsAccounts}) =
      _$ProfileWithSnsViewImpl;

  factory _ProfileWithSnsView.fromJson(Map<String, dynamic> json) =
      _$ProfileWithSnsViewImpl.fromJson;

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
  List<ProfileSocialNetworkingService> get snsAccounts;

  /// Create a copy of ProfileWithSnsView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileWithSnsViewImplCopyWith<_$ProfileWithSnsViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
