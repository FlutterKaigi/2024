// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsDataInitial value) initial,
    required TResult Function(NewsDataLoading value) loading,
    required TResult Function(NewsDataLoaded value) loaded,
    required TResult Function(NewsDataError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsDataInitial value)? initial,
    TResult? Function(NewsDataLoading value)? loading,
    TResult? Function(NewsDataLoaded value)? loaded,
    TResult? Function(NewsDataError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsDataInitial value)? initial,
    TResult Function(NewsDataLoading value)? loading,
    TResult Function(NewsDataLoaded value)? loaded,
    TResult Function(NewsDataError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataStateCopyWith<$Res> {
  factory $NewsDataStateCopyWith(
          NewsDataState value, $Res Function(NewsDataState) then) =
      _$NewsDataStateCopyWithImpl<$Res, NewsDataState>;
}

/// @nodoc
class _$NewsDataStateCopyWithImpl<$Res, $Val extends NewsDataState>
    implements $NewsDataStateCopyWith<$Res> {
  _$NewsDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NewsDataInitialImplCopyWith<$Res> {
  factory _$$NewsDataInitialImplCopyWith(_$NewsDataInitialImpl value,
          $Res Function(_$NewsDataInitialImpl) then) =
      __$$NewsDataInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsDataInitialImplCopyWithImpl<$Res>
    extends _$NewsDataStateCopyWithImpl<$Res, _$NewsDataInitialImpl>
    implements _$$NewsDataInitialImplCopyWith<$Res> {
  __$$NewsDataInitialImplCopyWithImpl(
      _$NewsDataInitialImpl _value, $Res Function(_$NewsDataInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewsDataInitialImpl implements NewsDataInitial {
  const _$NewsDataInitialImpl();

  @override
  String toString() {
    return 'NewsDataState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsDataInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsDataInitial value) initial,
    required TResult Function(NewsDataLoading value) loading,
    required TResult Function(NewsDataLoaded value) loaded,
    required TResult Function(NewsDataError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsDataInitial value)? initial,
    TResult? Function(NewsDataLoading value)? loading,
    TResult? Function(NewsDataLoaded value)? loaded,
    TResult? Function(NewsDataError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsDataInitial value)? initial,
    TResult Function(NewsDataLoading value)? loading,
    TResult Function(NewsDataLoaded value)? loaded,
    TResult Function(NewsDataError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class NewsDataInitial implements NewsDataState {
  const factory NewsDataInitial() = _$NewsDataInitialImpl;
}

/// @nodoc
abstract class _$$NewsDataLoadingImplCopyWith<$Res> {
  factory _$$NewsDataLoadingImplCopyWith(_$NewsDataLoadingImpl value,
          $Res Function(_$NewsDataLoadingImpl) then) =
      __$$NewsDataLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewsDataLoadingImplCopyWithImpl<$Res>
    extends _$NewsDataStateCopyWithImpl<$Res, _$NewsDataLoadingImpl>
    implements _$$NewsDataLoadingImplCopyWith<$Res> {
  __$$NewsDataLoadingImplCopyWithImpl(
      _$NewsDataLoadingImpl _value, $Res Function(_$NewsDataLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NewsDataLoadingImpl implements NewsDataLoading {
  const _$NewsDataLoadingImpl();

  @override
  String toString() {
    return 'NewsDataState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewsDataLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsDataInitial value) initial,
    required TResult Function(NewsDataLoading value) loading,
    required TResult Function(NewsDataLoaded value) loaded,
    required TResult Function(NewsDataError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsDataInitial value)? initial,
    TResult? Function(NewsDataLoading value)? loading,
    TResult? Function(NewsDataLoaded value)? loaded,
    TResult? Function(NewsDataError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsDataInitial value)? initial,
    TResult Function(NewsDataLoading value)? loading,
    TResult Function(NewsDataLoaded value)? loaded,
    TResult Function(NewsDataError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class NewsDataLoading implements NewsDataState {
  const factory NewsDataLoading() = _$NewsDataLoadingImpl;
}

/// @nodoc
abstract class _$$NewsDataLoadedImplCopyWith<$Res> {
  factory _$$NewsDataLoadedImplCopyWith(_$NewsDataLoadedImpl value,
          $Res Function(_$NewsDataLoadedImpl) then) =
      __$$NewsDataLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<News> news});
}

/// @nodoc
class __$$NewsDataLoadedImplCopyWithImpl<$Res>
    extends _$NewsDataStateCopyWithImpl<$Res, _$NewsDataLoadedImpl>
    implements _$$NewsDataLoadedImplCopyWith<$Res> {
  __$$NewsDataLoadedImplCopyWithImpl(
      _$NewsDataLoadedImpl _value, $Res Function(_$NewsDataLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? news = null,
  }) {
    return _then(_$NewsDataLoadedImpl(
      null == news
          ? _value._news
          : news // ignore: cast_nullable_to_non_nullable
              as List<News>,
    ));
  }
}

/// @nodoc

class _$NewsDataLoadedImpl implements NewsDataLoaded {
  const _$NewsDataLoadedImpl(final List<News> news) : _news = news;

  final List<News> _news;
  @override
  List<News> get news {
    if (_news is EqualUnmodifiableListView) return _news;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_news);
  }

  @override
  String toString() {
    return 'NewsDataState.loaded(news: $news)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDataLoadedImpl &&
            const DeepCollectionEquality().equals(other._news, _news));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_news));

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDataLoadedImplCopyWith<_$NewsDataLoadedImpl> get copyWith =>
      __$$NewsDataLoadedImplCopyWithImpl<_$NewsDataLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(news);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(news);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(news);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsDataInitial value) initial,
    required TResult Function(NewsDataLoading value) loading,
    required TResult Function(NewsDataLoaded value) loaded,
    required TResult Function(NewsDataError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsDataInitial value)? initial,
    TResult? Function(NewsDataLoading value)? loading,
    TResult? Function(NewsDataLoaded value)? loaded,
    TResult? Function(NewsDataError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsDataInitial value)? initial,
    TResult Function(NewsDataLoading value)? loading,
    TResult Function(NewsDataLoaded value)? loaded,
    TResult Function(NewsDataError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class NewsDataLoaded implements NewsDataState {
  const factory NewsDataLoaded(final List<News> news) = _$NewsDataLoadedImpl;

  List<News> get news;

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsDataLoadedImplCopyWith<_$NewsDataLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewsDataErrorImplCopyWith<$Res> {
  factory _$$NewsDataErrorImplCopyWith(
          _$NewsDataErrorImpl value, $Res Function(_$NewsDataErrorImpl) then) =
      __$$NewsDataErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NewsDataErrorImplCopyWithImpl<$Res>
    extends _$NewsDataStateCopyWithImpl<$Res, _$NewsDataErrorImpl>
    implements _$$NewsDataErrorImplCopyWith<$Res> {
  __$$NewsDataErrorImplCopyWithImpl(
      _$NewsDataErrorImpl _value, $Res Function(_$NewsDataErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NewsDataErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NewsDataErrorImpl implements NewsDataError {
  const _$NewsDataErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'NewsDataState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsDataErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsDataErrorImplCopyWith<_$NewsDataErrorImpl> get copyWith =>
      __$$NewsDataErrorImplCopyWithImpl<_$NewsDataErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<News> news) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<News> news)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<News> news)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NewsDataInitial value) initial,
    required TResult Function(NewsDataLoading value) loading,
    required TResult Function(NewsDataLoaded value) loaded,
    required TResult Function(NewsDataError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NewsDataInitial value)? initial,
    TResult? Function(NewsDataLoading value)? loading,
    TResult? Function(NewsDataLoaded value)? loaded,
    TResult? Function(NewsDataError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NewsDataInitial value)? initial,
    TResult Function(NewsDataLoading value)? loading,
    TResult Function(NewsDataLoaded value)? loaded,
    TResult Function(NewsDataError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class NewsDataError implements NewsDataState {
  const factory NewsDataError(final String message) = _$NewsDataErrorImpl;

  String get message;

  /// Create a copy of NewsDataState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsDataErrorImplCopyWith<_$NewsDataErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
