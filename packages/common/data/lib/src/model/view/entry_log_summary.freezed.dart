// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_log_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EntryLogSummary _$EntryLogSummaryFromJson(Map<String, dynamic> json) {
  return _EntryLogSummary.fromJson(json);
}

/// @nodoc
mixin _$EntryLogSummary {
  int get totalTickets => throw _privateConstructorUsedError;
  int get totalEntries => throw _privateConstructorUsedError;

  /// Serializes this EntryLogSummary to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EntryLogSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EntryLogSummaryCopyWith<EntryLogSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryLogSummaryCopyWith<$Res> {
  factory $EntryLogSummaryCopyWith(
          EntryLogSummary value, $Res Function(EntryLogSummary) then) =
      _$EntryLogSummaryCopyWithImpl<$Res, EntryLogSummary>;
  @useResult
  $Res call({int totalTickets, int totalEntries});
}

/// @nodoc
class _$EntryLogSummaryCopyWithImpl<$Res, $Val extends EntryLogSummary>
    implements $EntryLogSummaryCopyWith<$Res> {
  _$EntryLogSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EntryLogSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTickets = null,
    Object? totalEntries = null,
  }) {
    return _then(_value.copyWith(
      totalTickets: null == totalTickets
          ? _value.totalTickets
          : totalTickets // ignore: cast_nullable_to_non_nullable
              as int,
      totalEntries: null == totalEntries
          ? _value.totalEntries
          : totalEntries // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EntryLogSummaryImplCopyWith<$Res>
    implements $EntryLogSummaryCopyWith<$Res> {
  factory _$$EntryLogSummaryImplCopyWith(_$EntryLogSummaryImpl value,
          $Res Function(_$EntryLogSummaryImpl) then) =
      __$$EntryLogSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int totalTickets, int totalEntries});
}

/// @nodoc
class __$$EntryLogSummaryImplCopyWithImpl<$Res>
    extends _$EntryLogSummaryCopyWithImpl<$Res, _$EntryLogSummaryImpl>
    implements _$$EntryLogSummaryImplCopyWith<$Res> {
  __$$EntryLogSummaryImplCopyWithImpl(
      _$EntryLogSummaryImpl _value, $Res Function(_$EntryLogSummaryImpl) _then)
      : super(_value, _then);

  /// Create a copy of EntryLogSummary
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalTickets = null,
    Object? totalEntries = null,
  }) {
    return _then(_$EntryLogSummaryImpl(
      totalTickets: null == totalTickets
          ? _value.totalTickets
          : totalTickets // ignore: cast_nullable_to_non_nullable
              as int,
      totalEntries: null == totalEntries
          ? _value.totalEntries
          : totalEntries // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EntryLogSummaryImpl implements _EntryLogSummary {
  const _$EntryLogSummaryImpl(
      {required this.totalTickets, required this.totalEntries});

  factory _$EntryLogSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntryLogSummaryImplFromJson(json);

  @override
  final int totalTickets;
  @override
  final int totalEntries;

  @override
  String toString() {
    return 'EntryLogSummary(totalTickets: $totalTickets, totalEntries: $totalEntries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntryLogSummaryImpl &&
            (identical(other.totalTickets, totalTickets) ||
                other.totalTickets == totalTickets) &&
            (identical(other.totalEntries, totalEntries) ||
                other.totalEntries == totalEntries));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalTickets, totalEntries);

  /// Create a copy of EntryLogSummary
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EntryLogSummaryImplCopyWith<_$EntryLogSummaryImpl> get copyWith =>
      __$$EntryLogSummaryImplCopyWithImpl<_$EntryLogSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntryLogSummaryImplToJson(
      this,
    );
  }
}

abstract class _EntryLogSummary implements EntryLogSummary {
  const factory _EntryLogSummary(
      {required final int totalTickets,
      required final int totalEntries}) = _$EntryLogSummaryImpl;

  factory _EntryLogSummary.fromJson(Map<String, dynamic> json) =
      _$EntryLogSummaryImpl.fromJson;

  @override
  int get totalTickets;
  @override
  int get totalEntries;

  /// Create a copy of EntryLogSummary
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EntryLogSummaryImplCopyWith<_$EntryLogSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
