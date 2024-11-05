// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contributor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Contributor _$ContributorFromJson(Map<String, dynamic> json) {
  return _Contributor.fromJson(json);
}

/// @nodoc
mixin _$Contributor {
  String get name => throw _privateConstructorUsedError;
  Uri get avatarUrl => throw _privateConstructorUsedError;
  int get contributionCount => throw _privateConstructorUsedError;

  /// Serializes this Contributor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Contributor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContributorCopyWith<Contributor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContributorCopyWith<$Res> {
  factory $ContributorCopyWith(
          Contributor value, $Res Function(Contributor) then) =
      _$ContributorCopyWithImpl<$Res, Contributor>;
  @useResult
  $Res call({String name, Uri avatarUrl, int contributionCount});
}

/// @nodoc
class _$ContributorCopyWithImpl<$Res, $Val extends Contributor>
    implements $ContributorCopyWith<$Res> {
  _$ContributorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Contributor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? contributionCount = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      contributionCount: null == contributionCount
          ? _value.contributionCount
          : contributionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContributorImplCopyWith<$Res>
    implements $ContributorCopyWith<$Res> {
  factory _$$ContributorImplCopyWith(
          _$ContributorImpl value, $Res Function(_$ContributorImpl) then) =
      __$$ContributorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Uri avatarUrl, int contributionCount});
}

/// @nodoc
class __$$ContributorImplCopyWithImpl<$Res>
    extends _$ContributorCopyWithImpl<$Res, _$ContributorImpl>
    implements _$$ContributorImplCopyWith<$Res> {
  __$$ContributorImplCopyWithImpl(
      _$ContributorImpl _value, $Res Function(_$ContributorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Contributor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? avatarUrl = null,
    Object? contributionCount = null,
  }) {
    return _then(_$ContributorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      avatarUrl: null == avatarUrl
          ? _value.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as Uri,
      contributionCount: null == contributionCount
          ? _value.contributionCount
          : contributionCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContributorImpl implements _Contributor {
  const _$ContributorImpl(
      {required this.name,
      required this.avatarUrl,
      required this.contributionCount});

  factory _$ContributorImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContributorImplFromJson(json);

  @override
  final String name;
  @override
  final Uri avatarUrl;
  @override
  final int contributionCount;

  @override
  String toString() {
    return 'Contributor(name: $name, avatarUrl: $avatarUrl, contributionCount: $contributionCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContributorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl) &&
            (identical(other.contributionCount, contributionCount) ||
                other.contributionCount == contributionCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, avatarUrl, contributionCount);

  /// Create a copy of Contributor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContributorImplCopyWith<_$ContributorImpl> get copyWith =>
      __$$ContributorImplCopyWithImpl<_$ContributorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContributorImplToJson(
      this,
    );
  }
}

abstract class _Contributor implements Contributor {
  const factory _Contributor(
      {required final String name,
      required final Uri avatarUrl,
      required final int contributionCount}) = _$ContributorImpl;

  factory _Contributor.fromJson(Map<String, dynamic> json) =
      _$ContributorImpl.fromJson;

  @override
  String get name;
  @override
  Uri get avatarUrl;
  @override
  int get contributionCount;

  /// Create a copy of Contributor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContributorImplCopyWith<_$ContributorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
