// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tourou_language.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TourouLanguage {
  String? get tourouLanguage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourouLanguageCopyWith<TourouLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourouLanguageCopyWith<$Res> {
  factory $TourouLanguageCopyWith(
          TourouLanguage value, $Res Function(TourouLanguage) then) =
      _$TourouLanguageCopyWithImpl<$Res>;
  $Res call({String? tourouLanguage});
}

/// @nodoc
class _$TourouLanguageCopyWithImpl<$Res>
    implements $TourouLanguageCopyWith<$Res> {
  _$TourouLanguageCopyWithImpl(this._value, this._then);

  final TourouLanguage _value;
  // ignore: unused_field
  final $Res Function(TourouLanguage) _then;

  @override
  $Res call({
    Object? tourouLanguage = freezed,
  }) {
    return _then(_value.copyWith(
      tourouLanguage: tourouLanguage == freezed
          ? _value.tourouLanguage
          : tourouLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TourouLanguageCopyWith<$Res>
    implements $TourouLanguageCopyWith<$Res> {
  factory _$TourouLanguageCopyWith(
          _TourouLanguage value, $Res Function(_TourouLanguage) then) =
      __$TourouLanguageCopyWithImpl<$Res>;
  @override
  $Res call({String? tourouLanguage});
}

/// @nodoc
class __$TourouLanguageCopyWithImpl<$Res>
    extends _$TourouLanguageCopyWithImpl<$Res>
    implements _$TourouLanguageCopyWith<$Res> {
  __$TourouLanguageCopyWithImpl(
      _TourouLanguage _value, $Res Function(_TourouLanguage) _then)
      : super(_value, (v) => _then(v as _TourouLanguage));

  @override
  _TourouLanguage get _value => super._value as _TourouLanguage;

  @override
  $Res call({
    Object? tourouLanguage = freezed,
  }) {
    return _then(_TourouLanguage(
      tourouLanguage: tourouLanguage == freezed
          ? _value.tourouLanguage
          : tourouLanguage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TourouLanguage implements _TourouLanguage {
  _$_TourouLanguage({this.tourouLanguage});

  @override
  final String? tourouLanguage;

  @override
  String toString() {
    return 'TourouLanguage(tourouLanguage: $tourouLanguage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TourouLanguage &&
            const DeepCollectionEquality()
                .equals(other.tourouLanguage, tourouLanguage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tourouLanguage));

  @JsonKey(ignore: true)
  @override
  _$TourouLanguageCopyWith<_TourouLanguage> get copyWith =>
      __$TourouLanguageCopyWithImpl<_TourouLanguage>(this, _$identity);
}

abstract class _TourouLanguage implements TourouLanguage {
  factory _TourouLanguage({final String? tourouLanguage}) = _$_TourouLanguage;

  @override
  String? get tourouLanguage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourouLanguageCopyWith<_TourouLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}
