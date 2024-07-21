// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff_repository.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StaffsView _$StaffsViewFromJson(Map<String, dynamic> json) {
  return _StaffsView.fromJson(json);
}

/// @nodoc
mixin _$StaffsView {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'icon_name')
  String get iconName => throw _privateConstructorUsedError;
  String get greeting => throw _privateConstructorUsedError;
  @JsonKey(name: 'sns_accounts')
  List<StaffsViewSnsAccount> get snsAccounts =>
      throw _privateConstructorUsedError;

  /// Serializes this StaffsView to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffsView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffsViewCopyWith<StaffsView> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffsViewCopyWith<$Res> {
  factory $StaffsViewCopyWith(
          StaffsView value, $Res Function(StaffsView) then) =
      _$StaffsViewCopyWithImpl<$Res, StaffsView>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'icon_name') String iconName,
      String greeting,
      @JsonKey(name: 'sns_accounts') List<StaffsViewSnsAccount> snsAccounts});
}

/// @nodoc
class _$StaffsViewCopyWithImpl<$Res, $Val extends StaffsView>
    implements $StaffsViewCopyWith<$Res> {
  _$StaffsViewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffsView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconName = null,
    Object? greeting = null,
    Object? snsAccounts = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
      greeting: null == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      snsAccounts: null == snsAccounts
          ? _value.snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<StaffsViewSnsAccount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffsViewImplCopyWith<$Res>
    implements $StaffsViewCopyWith<$Res> {
  factory _$$StaffsViewImplCopyWith(
          _$StaffsViewImpl value, $Res Function(_$StaffsViewImpl) then) =
      __$$StaffsViewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'icon_name') String iconName,
      String greeting,
      @JsonKey(name: 'sns_accounts') List<StaffsViewSnsAccount> snsAccounts});
}

/// @nodoc
class __$$StaffsViewImplCopyWithImpl<$Res>
    extends _$StaffsViewCopyWithImpl<$Res, _$StaffsViewImpl>
    implements _$$StaffsViewImplCopyWith<$Res> {
  __$$StaffsViewImplCopyWithImpl(
      _$StaffsViewImpl _value, $Res Function(_$StaffsViewImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffsView
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconName = null,
    Object? greeting = null,
    Object? snsAccounts = null,
  }) {
    return _then(_$StaffsViewImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconName: null == iconName
          ? _value.iconName
          : iconName // ignore: cast_nullable_to_non_nullable
              as String,
      greeting: null == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      snsAccounts: null == snsAccounts
          ? _value._snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<StaffsViewSnsAccount>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffsViewImpl implements _StaffsView {
  const _$StaffsViewImpl(
      {required this.name,
      @JsonKey(name: 'icon_name') required this.iconName,
      required this.greeting,
      @JsonKey(name: 'sns_accounts')
      required final List<StaffsViewSnsAccount> snsAccounts})
      : _snsAccounts = snsAccounts;

  factory _$StaffsViewImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffsViewImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'icon_name')
  final String iconName;
  @override
  final String greeting;
  final List<StaffsViewSnsAccount> _snsAccounts;
  @override
  @JsonKey(name: 'sns_accounts')
  List<StaffsViewSnsAccount> get snsAccounts {
    if (_snsAccounts is EqualUnmodifiableListView) return _snsAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snsAccounts);
  }

  @override
  String toString() {
    return 'StaffsView(name: $name, iconName: $iconName, greeting: $greeting, snsAccounts: $snsAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffsViewImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconName, iconName) ||
                other.iconName == iconName) &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting) &&
            const DeepCollectionEquality()
                .equals(other._snsAccounts, _snsAccounts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, iconName, greeting,
      const DeepCollectionEquality().hash(_snsAccounts));

  /// Create a copy of StaffsView
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffsViewImplCopyWith<_$StaffsViewImpl> get copyWith =>
      __$$StaffsViewImplCopyWithImpl<_$StaffsViewImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffsViewImplToJson(
      this,
    );
  }
}

abstract class _StaffsView implements StaffsView {
  const factory _StaffsView(
          {required final String name,
          @JsonKey(name: 'icon_name') required final String iconName,
          required final String greeting,
          @JsonKey(name: 'sns_accounts')
          required final List<StaffsViewSnsAccount> snsAccounts}) =
      _$StaffsViewImpl;

  factory _StaffsView.fromJson(Map<String, dynamic> json) =
      _$StaffsViewImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'icon_name')
  String get iconName;
  @override
  String get greeting;
  @override
  @JsonKey(name: 'sns_accounts')
  List<StaffsViewSnsAccount> get snsAccounts;

  /// Create a copy of StaffsView
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffsViewImplCopyWith<_$StaffsViewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StaffsViewSnsAccount _$StaffsViewSnsAccountFromJson(Map<String, dynamic> json) {
  return _StaffsViewSnsAccount.fromJson(json);
}

/// @nodoc
mixin _$StaffsViewSnsAccount {
  String get type => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;

  /// Serializes this StaffsViewSnsAccount to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StaffsViewSnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffsViewSnsAccountCopyWith<StaffsViewSnsAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffsViewSnsAccountCopyWith<$Res> {
  factory $StaffsViewSnsAccountCopyWith(StaffsViewSnsAccount value,
          $Res Function(StaffsViewSnsAccount) then) =
      _$StaffsViewSnsAccountCopyWithImpl<$Res, StaffsViewSnsAccount>;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class _$StaffsViewSnsAccountCopyWithImpl<$Res,
        $Val extends StaffsViewSnsAccount>
    implements $StaffsViewSnsAccountCopyWith<$Res> {
  _$StaffsViewSnsAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StaffsViewSnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffsViewSnsAccountImplCopyWith<$Res>
    implements $StaffsViewSnsAccountCopyWith<$Res> {
  factory _$$StaffsViewSnsAccountImplCopyWith(_$StaffsViewSnsAccountImpl value,
          $Res Function(_$StaffsViewSnsAccountImpl) then) =
      __$$StaffsViewSnsAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$$StaffsViewSnsAccountImplCopyWithImpl<$Res>
    extends _$StaffsViewSnsAccountCopyWithImpl<$Res, _$StaffsViewSnsAccountImpl>
    implements _$$StaffsViewSnsAccountImplCopyWith<$Res> {
  __$$StaffsViewSnsAccountImplCopyWithImpl(_$StaffsViewSnsAccountImpl _value,
      $Res Function(_$StaffsViewSnsAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of StaffsViewSnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$StaffsViewSnsAccountImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StaffsViewSnsAccountImpl implements _StaffsViewSnsAccount {
  const _$StaffsViewSnsAccountImpl({required this.type, required this.value});

  factory _$StaffsViewSnsAccountImpl.fromJson(Map<String, dynamic> json) =>
      _$$StaffsViewSnsAccountImplFromJson(json);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString() {
    return 'StaffsViewSnsAccount(type: $type, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffsViewSnsAccountImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of StaffsViewSnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffsViewSnsAccountImplCopyWith<_$StaffsViewSnsAccountImpl>
      get copyWith =>
          __$$StaffsViewSnsAccountImplCopyWithImpl<_$StaffsViewSnsAccountImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StaffsViewSnsAccountImplToJson(
      this,
    );
  }
}

abstract class _StaffsViewSnsAccount implements StaffsViewSnsAccount {
  const factory _StaffsViewSnsAccount(
      {required final String type,
      required final String value}) = _$StaffsViewSnsAccountImpl;

  factory _StaffsViewSnsAccount.fromJson(Map<String, dynamic> json) =
      _$StaffsViewSnsAccountImpl.fromJson;

  @override
  String get type;
  @override
  String get value;

  /// Create a copy of StaffsViewSnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffsViewSnsAccountImplCopyWith<_$StaffsViewSnsAccountImpl>
      get copyWith => throw _privateConstructorUsedError;
}
