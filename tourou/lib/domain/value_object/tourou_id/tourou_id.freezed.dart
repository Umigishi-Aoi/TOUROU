// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tourou_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TourouId {
  String? get tourouId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourouIdCopyWith<TourouId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourouIdCopyWith<$Res> {
  factory $TourouIdCopyWith(TourouId value, $Res Function(TourouId) then) =
      _$TourouIdCopyWithImpl<$Res>;
  $Res call({String? tourouId});
}

/// @nodoc
class _$TourouIdCopyWithImpl<$Res> implements $TourouIdCopyWith<$Res> {
  _$TourouIdCopyWithImpl(this._value, this._then);

  final TourouId _value;
  // ignore: unused_field
  final $Res Function(TourouId) _then;

  @override
  $Res call({
    Object? tourouId = freezed,
  }) {
    return _then(_value.copyWith(
      tourouId: tourouId == freezed
          ? _value.tourouId
          : tourouId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TourouIdCopyWith<$Res> implements $TourouIdCopyWith<$Res> {
  factory _$TourouIdCopyWith(_TourouId value, $Res Function(_TourouId) then) =
      __$TourouIdCopyWithImpl<$Res>;
  @override
  $Res call({String? tourouId});
}

/// @nodoc
class __$TourouIdCopyWithImpl<$Res> extends _$TourouIdCopyWithImpl<$Res>
    implements _$TourouIdCopyWith<$Res> {
  __$TourouIdCopyWithImpl(_TourouId _value, $Res Function(_TourouId) _then)
      : super(_value, (v) => _then(v as _TourouId));

  @override
  _TourouId get _value => super._value as _TourouId;

  @override
  $Res call({
    Object? tourouId = freezed,
  }) {
    return _then(_TourouId(
      tourouId: tourouId == freezed
          ? _value.tourouId
          : tourouId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TourouId implements _TourouId {
  _$_TourouId({this.tourouId});

  @override
  final String? tourouId;

  @override
  String toString() {
    return 'TourouId(tourouId: $tourouId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TourouId &&
            const DeepCollectionEquality().equals(other.tourouId, tourouId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tourouId));

  @JsonKey(ignore: true)
  @override
  _$TourouIdCopyWith<_TourouId> get copyWith =>
      __$TourouIdCopyWithImpl<_TourouId>(this, _$identity);
}

abstract class _TourouId implements TourouId {
  factory _TourouId({final String? tourouId}) = _$_TourouId;

  @override
  String? get tourouId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourouIdCopyWith<_TourouId> get copyWith =>
      throw _privateConstructorUsedError;
}
