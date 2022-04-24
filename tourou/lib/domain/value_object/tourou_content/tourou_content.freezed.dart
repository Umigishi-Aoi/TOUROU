// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tourou_content.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TourouContent {
  String? get tourouContent => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourouContentCopyWith<TourouContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourouContentCopyWith<$Res> {
  factory $TourouContentCopyWith(
          TourouContent value, $Res Function(TourouContent) then) =
      _$TourouContentCopyWithImpl<$Res>;
  $Res call({String? tourouContent});
}

/// @nodoc
class _$TourouContentCopyWithImpl<$Res>
    implements $TourouContentCopyWith<$Res> {
  _$TourouContentCopyWithImpl(this._value, this._then);

  final TourouContent _value;
  // ignore: unused_field
  final $Res Function(TourouContent) _then;

  @override
  $Res call({
    Object? tourouContent = freezed,
  }) {
    return _then(_value.copyWith(
      tourouContent: tourouContent == freezed
          ? _value.tourouContent
          : tourouContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TourouContentCopyWith<$Res>
    implements $TourouContentCopyWith<$Res> {
  factory _$TourouContentCopyWith(
          _TourouContent value, $Res Function(_TourouContent) then) =
      __$TourouContentCopyWithImpl<$Res>;
  @override
  $Res call({String? tourouContent});
}

/// @nodoc
class __$TourouContentCopyWithImpl<$Res>
    extends _$TourouContentCopyWithImpl<$Res>
    implements _$TourouContentCopyWith<$Res> {
  __$TourouContentCopyWithImpl(
      _TourouContent _value, $Res Function(_TourouContent) _then)
      : super(_value, (v) => _then(v as _TourouContent));

  @override
  _TourouContent get _value => super._value as _TourouContent;

  @override
  $Res call({
    Object? tourouContent = freezed,
  }) {
    return _then(_TourouContent(
      tourouContent: tourouContent == freezed
          ? _value.tourouContent
          : tourouContent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TourouContent implements _TourouContent {
  _$_TourouContent({this.tourouContent});

  @override
  final String? tourouContent;

  @override
  String toString() {
    return 'TourouContent(tourouContent: $tourouContent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TourouContent &&
            const DeepCollectionEquality()
                .equals(other.tourouContent, tourouContent));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tourouContent));

  @JsonKey(ignore: true)
  @override
  _$TourouContentCopyWith<_TourouContent> get copyWith =>
      __$TourouContentCopyWithImpl<_TourouContent>(this, _$identity);
}

abstract class _TourouContent implements TourouContent {
  factory _TourouContent({final String? tourouContent}) = _$_TourouContent;

  @override
  String? get tourouContent => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourouContentCopyWith<_TourouContent> get copyWith =>
      throw _privateConstructorUsedError;
}
