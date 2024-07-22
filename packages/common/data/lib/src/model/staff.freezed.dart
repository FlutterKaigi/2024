// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'staff.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Staff {
  String get name => throw _privateConstructorUsedError;
  Uri get iconUrl => throw _privateConstructorUsedError;
  String get greeting => throw _privateConstructorUsedError;
  List<SnsAccount> get snsAccounts => throw _privateConstructorUsedError;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StaffCopyWith<Staff> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StaffCopyWith<$Res> {
  factory $StaffCopyWith(Staff value, $Res Function(Staff) then) =
      _$StaffCopyWithImpl<$Res, Staff>;
  @useResult
  $Res call(
      {String name,
      Uri iconUrl,
      String greeting,
      List<SnsAccount> snsAccounts});
}

/// @nodoc
class _$StaffCopyWithImpl<$Res, $Val extends Staff>
    implements $StaffCopyWith<$Res> {
  _$StaffCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = null,
    Object? greeting = null,
    Object? snsAccounts = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      greeting: null == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      snsAccounts: null == snsAccounts
          ? _value.snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<SnsAccount>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StaffImplCopyWith<$Res> implements $StaffCopyWith<$Res> {
  factory _$$StaffImplCopyWith(
          _$StaffImpl value, $Res Function(_$StaffImpl) then) =
      __$$StaffImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Uri iconUrl,
      String greeting,
      List<SnsAccount> snsAccounts});
}

/// @nodoc
class __$$StaffImplCopyWithImpl<$Res>
    extends _$StaffCopyWithImpl<$Res, _$StaffImpl>
    implements _$$StaffImplCopyWith<$Res> {
  __$$StaffImplCopyWithImpl(
      _$StaffImpl _value, $Res Function(_$StaffImpl) _then)
      : super(_value, _then);

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? iconUrl = null,
    Object? greeting = null,
    Object? snsAccounts = null,
  }) {
    return _then(_$StaffImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      iconUrl: null == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      greeting: null == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      snsAccounts: null == snsAccounts
          ? _value._snsAccounts
          : snsAccounts // ignore: cast_nullable_to_non_nullable
              as List<SnsAccount>,
    ));
  }
}

/// @nodoc

class _$StaffImpl implements _Staff {
  const _$StaffImpl(
      {required this.name,
      required this.iconUrl,
      required this.greeting,
      required final List<SnsAccount> snsAccounts})
      : _snsAccounts = snsAccounts;

  @override
  final String name;
  @override
  final Uri iconUrl;
  @override
  final String greeting;
  final List<SnsAccount> _snsAccounts;
  @override
  List<SnsAccount> get snsAccounts {
    if (_snsAccounts is EqualUnmodifiableListView) return _snsAccounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_snsAccounts);
  }

  @override
  String toString() {
    return 'Staff(name: $name, iconUrl: $iconUrl, greeting: $greeting, snsAccounts: $snsAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaffImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl) &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting) &&
            const DeepCollectionEquality()
                .equals(other._snsAccounts, _snsAccounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, iconUrl, greeting,
      const DeepCollectionEquality().hash(_snsAccounts));

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaffImplCopyWith<_$StaffImpl> get copyWith =>
      __$$StaffImplCopyWithImpl<_$StaffImpl>(this, _$identity);
}

abstract class _Staff implements Staff {
  const factory _Staff(
      {required final String name,
      required final Uri iconUrl,
      required final String greeting,
      required final List<SnsAccount> snsAccounts}) = _$StaffImpl;

  @override
  String get name;
  @override
  Uri get iconUrl;
  @override
  String get greeting;
  @override
  List<SnsAccount> get snsAccounts;

  /// Create a copy of Staff
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaffImplCopyWith<_$StaffImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
