// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_photo_link.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfilePhotoLink {
  String? get profilePhotoLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePhotoLinkCopyWith<ProfilePhotoLink> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePhotoLinkCopyWith<$Res> {
  factory $ProfilePhotoLinkCopyWith(
          ProfilePhotoLink value, $Res Function(ProfilePhotoLink) then) =
      _$ProfilePhotoLinkCopyWithImpl<$Res>;
  $Res call({String? profilePhotoLink});
}

/// @nodoc
class _$ProfilePhotoLinkCopyWithImpl<$Res>
    implements $ProfilePhotoLinkCopyWith<$Res> {
  _$ProfilePhotoLinkCopyWithImpl(this._value, this._then);

  final ProfilePhotoLink _value;
  // ignore: unused_field
  final $Res Function(ProfilePhotoLink) _then;

  @override
  $Res call({
    Object? profilePhotoLink = freezed,
  }) {
    return _then(_value.copyWith(
      profilePhotoLink: profilePhotoLink == freezed
          ? _value.profilePhotoLink
          : profilePhotoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProfilePhotoLinkCopyWith<$Res>
    implements $ProfilePhotoLinkCopyWith<$Res> {
  factory _$ProfilePhotoLinkCopyWith(
          _ProfilePhotoLink value, $Res Function(_ProfilePhotoLink) then) =
      __$ProfilePhotoLinkCopyWithImpl<$Res>;
  @override
  $Res call({String? profilePhotoLink});
}

/// @nodoc
class __$ProfilePhotoLinkCopyWithImpl<$Res>
    extends _$ProfilePhotoLinkCopyWithImpl<$Res>
    implements _$ProfilePhotoLinkCopyWith<$Res> {
  __$ProfilePhotoLinkCopyWithImpl(
      _ProfilePhotoLink _value, $Res Function(_ProfilePhotoLink) _then)
      : super(_value, (v) => _then(v as _ProfilePhotoLink));

  @override
  _ProfilePhotoLink get _value => super._value as _ProfilePhotoLink;

  @override
  $Res call({
    Object? profilePhotoLink = freezed,
  }) {
    return _then(_ProfilePhotoLink(
      profilePhotoLink: profilePhotoLink == freezed
          ? _value.profilePhotoLink
          : profilePhotoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ProfilePhotoLink implements _ProfilePhotoLink {
  _$_ProfilePhotoLink({this.profilePhotoLink});

  @override
  final String? profilePhotoLink;

  @override
  String toString() {
    return 'ProfilePhotoLink(profilePhotoLink: $profilePhotoLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProfilePhotoLink &&
            const DeepCollectionEquality()
                .equals(other.profilePhotoLink, profilePhotoLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(profilePhotoLink));

  @JsonKey(ignore: true)
  @override
  _$ProfilePhotoLinkCopyWith<_ProfilePhotoLink> get copyWith =>
      __$ProfilePhotoLinkCopyWithImpl<_ProfilePhotoLink>(this, _$identity);
}

abstract class _ProfilePhotoLink implements ProfilePhotoLink {
  factory _ProfilePhotoLink({final String? profilePhotoLink}) =
      _$_ProfilePhotoLink;

  @override
  String? get profilePhotoLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProfilePhotoLinkCopyWith<_ProfilePhotoLink> get copyWith =>
      throw _privateConstructorUsedError;
}
