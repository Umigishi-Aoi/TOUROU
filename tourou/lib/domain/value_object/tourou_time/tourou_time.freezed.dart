// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tourou_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TourouTime {
  DateTime? get tourouTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourouTimeCopyWith<TourouTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourouTimeCopyWith<$Res> {
  factory $TourouTimeCopyWith(
          TourouTime value, $Res Function(TourouTime) then) =
      _$TourouTimeCopyWithImpl<$Res>;
  $Res call({DateTime? tourouTime});
}

/// @nodoc
class _$TourouTimeCopyWithImpl<$Res> implements $TourouTimeCopyWith<$Res> {
  _$TourouTimeCopyWithImpl(this._value, this._then);

  final TourouTime _value;
  // ignore: unused_field
  final $Res Function(TourouTime) _then;

  @override
  $Res call({
    Object? tourouTime = freezed,
  }) {
    return _then(_value.copyWith(
      tourouTime: tourouTime == freezed
          ? _value.tourouTime
          : tourouTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$TourouTimeCopyWith<$Res> implements $TourouTimeCopyWith<$Res> {
  factory _$TourouTimeCopyWith(
          _TourouTime value, $Res Function(_TourouTime) then) =
      __$TourouTimeCopyWithImpl<$Res>;
  @override
  $Res call({DateTime? tourouTime});
}

/// @nodoc
class __$TourouTimeCopyWithImpl<$Res> extends _$TourouTimeCopyWithImpl<$Res>
    implements _$TourouTimeCopyWith<$Res> {
  __$TourouTimeCopyWithImpl(
      _TourouTime _value, $Res Function(_TourouTime) _then)
      : super(_value, (v) => _then(v as _TourouTime));

  @override
  _TourouTime get _value => super._value as _TourouTime;

  @override
  $Res call({
    Object? tourouTime = freezed,
  }) {
    return _then(_TourouTime(
      tourouTime: tourouTime == freezed
          ? _value.tourouTime
          : tourouTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_TourouTime implements _TourouTime {
  _$_TourouTime({this.tourouTime});

  @override
  final DateTime? tourouTime;

  @override
  String toString() {
    return 'TourouTime(tourouTime: $tourouTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TourouTime &&
            const DeepCollectionEquality()
                .equals(other.tourouTime, tourouTime));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tourouTime));

  @JsonKey(ignore: true)
  @override
  _$TourouTimeCopyWith<_TourouTime> get copyWith =>
      __$TourouTimeCopyWithImpl<_TourouTime>(this, _$identity);
}

abstract class _TourouTime implements TourouTime {
  factory _TourouTime({final DateTime? tourouTime}) = _$_TourouTime;

  @override
  DateTime? get tourouTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourouTimeCopyWith<_TourouTime> get copyWith =>
      throw _privateConstructorUsedError;
}
