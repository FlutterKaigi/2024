// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_board.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobBoard _$JobBoardFromJson(Map<String, dynamic> json) {
  return _JobBoard.fromJson(json);
}

/// @nodoc
mixin _$JobBoard {
  int get id => throw _privateConstructorUsedError;
  Uri get uri => throw _privateConstructorUsedError;
  String get altText => throw _privateConstructorUsedError;
  Uri get imageUri => throw _privateConstructorUsedError;

  /// Serializes this JobBoard to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobBoard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobBoardCopyWith<JobBoard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobBoardCopyWith<$Res> {
  factory $JobBoardCopyWith(JobBoard value, $Res Function(JobBoard) then) =
      _$JobBoardCopyWithImpl<$Res, JobBoard>;
  @useResult
  $Res call({int id, Uri uri, String altText, Uri imageUri});
}

/// @nodoc
class _$JobBoardCopyWithImpl<$Res, $Val extends JobBoard>
    implements $JobBoardCopyWith<$Res> {
  _$JobBoardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobBoard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uri = null,
    Object? altText = null,
    Object? imageUri = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobBoardImplCopyWith<$Res>
    implements $JobBoardCopyWith<$Res> {
  factory _$$JobBoardImplCopyWith(
          _$JobBoardImpl value, $Res Function(_$JobBoardImpl) then) =
      __$$JobBoardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, Uri uri, String altText, Uri imageUri});
}

/// @nodoc
class __$$JobBoardImplCopyWithImpl<$Res>
    extends _$JobBoardCopyWithImpl<$Res, _$JobBoardImpl>
    implements _$$JobBoardImplCopyWith<$Res> {
  __$$JobBoardImplCopyWithImpl(
      _$JobBoardImpl _value, $Res Function(_$JobBoardImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobBoard
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uri = null,
    Object? altText = null,
    Object? imageUri = null,
  }) {
    return _then(_$JobBoardImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as Uri,
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      imageUri: null == imageUri
          ? _value.imageUri
          : imageUri // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobBoardImpl implements _JobBoard {
  const _$JobBoardImpl(
      {required this.id,
      required this.uri,
      required this.altText,
      required this.imageUri});

  factory _$JobBoardImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobBoardImplFromJson(json);

  @override
  final int id;
  @override
  final Uri uri;
  @override
  final String altText;
  @override
  final Uri imageUri;

  @override
  String toString() {
    return 'JobBoard(id: $id, uri: $uri, altText: $altText, imageUri: $imageUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobBoardImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uri, uri) || other.uri == uri) &&
            (identical(other.altText, altText) || other.altText == altText) &&
            (identical(other.imageUri, imageUri) ||
                other.imageUri == imageUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uri, altText, imageUri);

  /// Create a copy of JobBoard
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobBoardImplCopyWith<_$JobBoardImpl> get copyWith =>
      __$$JobBoardImplCopyWithImpl<_$JobBoardImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobBoardImplToJson(
      this,
    );
  }
}

abstract class _JobBoard implements JobBoard {
  const factory _JobBoard(
      {required final int id,
      required final Uri uri,
      required final String altText,
      required final Uri imageUri}) = _$JobBoardImpl;

  factory _JobBoard.fromJson(Map<String, dynamic> json) =
      _$JobBoardImpl.fromJson;

  @override
  int get id;
  @override
  Uri get uri;
  @override
  String get altText;
  @override
  Uri get imageUri;

  /// Create a copy of JobBoard
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobBoardImplCopyWith<_$JobBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

JobBoardTable _$JobBoardTableFromJson(Map<String, dynamic> json) {
  return _JobBoardTable.fromJson(json);
}

/// @nodoc
mixin _$JobBoardTable {
  int get id => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get altText => throw _privateConstructorUsedError;
  String get imageName => throw _privateConstructorUsedError;

  /// Serializes this JobBoardTable to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JobBoardTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JobBoardTableCopyWith<JobBoardTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobBoardTableCopyWith<$Res> {
  factory $JobBoardTableCopyWith(
          JobBoardTable value, $Res Function(JobBoardTable) then) =
      _$JobBoardTableCopyWithImpl<$Res, JobBoardTable>;
  @useResult
  $Res call({int id, String url, String altText, String imageName});
}

/// @nodoc
class _$JobBoardTableCopyWithImpl<$Res, $Val extends JobBoardTable>
    implements $JobBoardTableCopyWith<$Res> {
  _$JobBoardTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JobBoardTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? altText = null,
    Object? imageName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobBoardTableImplCopyWith<$Res>
    implements $JobBoardTableCopyWith<$Res> {
  factory _$$JobBoardTableImplCopyWith(
          _$JobBoardTableImpl value, $Res Function(_$JobBoardTableImpl) then) =
      __$$JobBoardTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String url, String altText, String imageName});
}

/// @nodoc
class __$$JobBoardTableImplCopyWithImpl<$Res>
    extends _$JobBoardTableCopyWithImpl<$Res, _$JobBoardTableImpl>
    implements _$$JobBoardTableImplCopyWith<$Res> {
  __$$JobBoardTableImplCopyWithImpl(
      _$JobBoardTableImpl _value, $Res Function(_$JobBoardTableImpl) _then)
      : super(_value, _then);

  /// Create a copy of JobBoardTable
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? altText = null,
    Object? imageName = null,
  }) {
    return _then(_$JobBoardTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      altText: null == altText
          ? _value.altText
          : altText // ignore: cast_nullable_to_non_nullable
              as String,
      imageName: null == imageName
          ? _value.imageName
          : imageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobBoardTableImpl implements _JobBoardTable {
  const _$JobBoardTableImpl(
      {required this.id,
      required this.url,
      required this.altText,
      required this.imageName});

  factory _$JobBoardTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobBoardTableImplFromJson(json);

  @override
  final int id;
  @override
  final String url;
  @override
  final String altText;
  @override
  final String imageName;

  @override
  String toString() {
    return 'JobBoardTable(id: $id, url: $url, altText: $altText, imageName: $imageName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobBoardTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.altText, altText) || other.altText == altText) &&
            (identical(other.imageName, imageName) ||
                other.imageName == imageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, url, altText, imageName);

  /// Create a copy of JobBoardTable
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JobBoardTableImplCopyWith<_$JobBoardTableImpl> get copyWith =>
      __$$JobBoardTableImplCopyWithImpl<_$JobBoardTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobBoardTableImplToJson(
      this,
    );
  }
}

abstract class _JobBoardTable implements JobBoardTable {
  const factory _JobBoardTable(
      {required final int id,
      required final String url,
      required final String altText,
      required final String imageName}) = _$JobBoardTableImpl;

  factory _JobBoardTable.fromJson(Map<String, dynamic> json) =
      _$JobBoardTableImpl.fromJson;

  @override
  int get id;
  @override
  String get url;
  @override
  String get altText;
  @override
  String get imageName;

  /// Create a copy of JobBoardTable
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JobBoardTableImplCopyWith<_$JobBoardTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
