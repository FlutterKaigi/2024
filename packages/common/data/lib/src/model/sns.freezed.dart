// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sns.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SnsAccount {
  SnsType get type => throw _privateConstructorUsedError;
  Uri get link => throw _privateConstructorUsedError;

  /// Create a copy of SnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SnsAccountCopyWith<SnsAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SnsAccountCopyWith<$Res> {
  factory $SnsAccountCopyWith(
          SnsAccount value, $Res Function(SnsAccount) then) =
      _$SnsAccountCopyWithImpl<$Res, SnsAccount>;
  @useResult
  $Res call({SnsType type, Uri link});
}

/// @nodoc
class _$SnsAccountCopyWithImpl<$Res, $Val extends SnsAccount>
    implements $SnsAccountCopyWith<$Res> {
  _$SnsAccountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? link = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SnsAccountImplCopyWith<$Res>
    implements $SnsAccountCopyWith<$Res> {
  factory _$$SnsAccountImplCopyWith(
          _$SnsAccountImpl value, $Res Function(_$SnsAccountImpl) then) =
      __$$SnsAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SnsType type, Uri link});
}

/// @nodoc
class __$$SnsAccountImplCopyWithImpl<$Res>
    extends _$SnsAccountCopyWithImpl<$Res, _$SnsAccountImpl>
    implements _$$SnsAccountImplCopyWith<$Res> {
  __$$SnsAccountImplCopyWithImpl(
      _$SnsAccountImpl _value, $Res Function(_$SnsAccountImpl) _then)
      : super(_value, _then);

  /// Create a copy of SnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? link = null,
  }) {
    return _then(_$SnsAccountImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SnsType,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$SnsAccountImpl implements _SnsAccount {
  const _$SnsAccountImpl({required this.type, required this.link});

  @override
  final SnsType type;
  @override
  final Uri link;

  @override
  String toString() {
    return 'SnsAccount(type: $type, link: $link)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SnsAccountImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, link);

  /// Create a copy of SnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SnsAccountImplCopyWith<_$SnsAccountImpl> get copyWith =>
      __$$SnsAccountImplCopyWithImpl<_$SnsAccountImpl>(this, _$identity);
}

abstract class _SnsAccount implements SnsAccount {
  const factory _SnsAccount(
      {required final SnsType type,
      required final Uri link}) = _$SnsAccountImpl;

  @override
  SnsType get type;
  @override
  Uri get link;

  /// Create a copy of SnsAccount
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SnsAccountImplCopyWith<_$SnsAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
