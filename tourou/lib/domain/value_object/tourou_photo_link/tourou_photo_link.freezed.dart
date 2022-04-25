// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tourou_photo_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TourouPhotoLink {
  String? get tourouPhotoLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TourouPhotoLinkCopyWith<TourouPhotoLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TourouPhotoLinkCopyWith<$Res> {
  factory $TourouPhotoLinkCopyWith(
          TourouPhotoLink value, $Res Function(TourouPhotoLink) then) =
      _$TourouPhotoLinkCopyWithImpl<$Res>;
  $Res call({String? tourouPhotoLink});
}

/// @nodoc
class _$TourouPhotoLinkCopyWithImpl<$Res>
    implements $TourouPhotoLinkCopyWith<$Res> {
  _$TourouPhotoLinkCopyWithImpl(this._value, this._then);

  final TourouPhotoLink _value;
  // ignore: unused_field
  final $Res Function(TourouPhotoLink) _then;

  @override
  $Res call({
    Object? tourouPhotoLink = freezed,
  }) {
    return _then(_value.copyWith(
      tourouPhotoLink: tourouPhotoLink == freezed
          ? _value.tourouPhotoLink
          : tourouPhotoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$TourouPhotoLinkCopyWith<$Res>
    implements $TourouPhotoLinkCopyWith<$Res> {
  factory _$TourouPhotoLinkCopyWith(
          _TourouPhotoLink value, $Res Function(_TourouPhotoLink) then) =
      __$TourouPhotoLinkCopyWithImpl<$Res>;
  @override
  $Res call({String? tourouPhotoLink});
}

/// @nodoc
class __$TourouPhotoLinkCopyWithImpl<$Res>
    extends _$TourouPhotoLinkCopyWithImpl<$Res>
    implements _$TourouPhotoLinkCopyWith<$Res> {
  __$TourouPhotoLinkCopyWithImpl(
      _TourouPhotoLink _value, $Res Function(_TourouPhotoLink) _then)
      : super(_value, (v) => _then(v as _TourouPhotoLink));

  @override
  _TourouPhotoLink get _value => super._value as _TourouPhotoLink;

  @override
  $Res call({
    Object? tourouPhotoLink = freezed,
  }) {
    return _then(_TourouPhotoLink(
      tourouPhotoLink: tourouPhotoLink == freezed
          ? _value.tourouPhotoLink
          : tourouPhotoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_TourouPhotoLink implements _TourouPhotoLink {
  _$_TourouPhotoLink({this.tourouPhotoLink});

  @override
  final String? tourouPhotoLink;

  @override
  String toString() {
    return 'TourouPhotoLink(tourouPhotoLink: $tourouPhotoLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TourouPhotoLink &&
            const DeepCollectionEquality()
                .equals(other.tourouPhotoLink, tourouPhotoLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(tourouPhotoLink));

  @JsonKey(ignore: true)
  @override
  _$TourouPhotoLinkCopyWith<_TourouPhotoLink> get copyWith =>
      __$TourouPhotoLinkCopyWithImpl<_TourouPhotoLink>(this, _$identity);
}

abstract class _TourouPhotoLink implements TourouPhotoLink {
  factory _TourouPhotoLink({final String? tourouPhotoLink}) =
      _$_TourouPhotoLink;

  @override
  String? get tourouPhotoLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TourouPhotoLinkCopyWith<_TourouPhotoLink> get copyWith =>
      throw _privateConstructorUsedError;
}
