// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserName {
  String? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameCopyWith<UserName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameCopyWith<$Res> {
  factory $UserNameCopyWith(UserName value, $Res Function(UserName) then) =
      _$UserNameCopyWithImpl<$Res>;
  $Res call({String? userId});
}

/// @nodoc
class _$UserNameCopyWithImpl<$Res> implements $UserNameCopyWith<$Res> {
  _$UserNameCopyWithImpl(this._value, this._then);

  final UserName _value;
  // ignore: unused_field
  final $Res Function(UserName) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserNameCopyWith<$Res> implements $UserNameCopyWith<$Res> {
  factory _$UserNameCopyWith(_UserName value, $Res Function(_UserName) then) =
      __$UserNameCopyWithImpl<$Res>;
  @override
  $Res call({String? userId});
}

/// @nodoc
class __$UserNameCopyWithImpl<$Res> extends _$UserNameCopyWithImpl<$Res>
    implements _$UserNameCopyWith<$Res> {
  __$UserNameCopyWithImpl(_UserName _value, $Res Function(_UserName) _then)
      : super(_value, (v) => _then(v as _UserName));

  @override
  _UserName get _value => super._value as _UserName;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_UserName(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserName implements _UserName {
  _$_UserName({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'UserName(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserName &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$UserNameCopyWith<_UserName> get copyWith =>
      __$UserNameCopyWithImpl<_UserName>(this, _$identity);
}

abstract class _UserName implements UserName {
  factory _UserName({final String? userId}) = _$_UserName;

  @override
  String? get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserNameCopyWith<_UserName> get copyWith =>
      throw _privateConstructorUsedError;
}
