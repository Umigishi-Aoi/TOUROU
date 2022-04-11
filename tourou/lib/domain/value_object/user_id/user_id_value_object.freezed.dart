// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_id_value_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserIdValueObjectTearOff {
  const _$UserIdValueObjectTearOff();

  _UserIdValueObject call({String? userId}) {
    return _UserIdValueObject(
      userId: userId,
    );
  }
}

/// @nodoc
const $UserIdValueObject = _$UserIdValueObjectTearOff();

/// @nodoc
mixin _$UserIdValueObject {
  String? get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserIdValueObjectCopyWith<UserIdValueObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserIdValueObjectCopyWith<$Res> {
  factory $UserIdValueObjectCopyWith(
          UserIdValueObject value, $Res Function(UserIdValueObject) then) =
      _$UserIdValueObjectCopyWithImpl<$Res>;
  $Res call({String? userId});
}

/// @nodoc
class _$UserIdValueObjectCopyWithImpl<$Res>
    implements $UserIdValueObjectCopyWith<$Res> {
  _$UserIdValueObjectCopyWithImpl(this._value, this._then);

  final UserIdValueObject _value;
  // ignore: unused_field
  final $Res Function(UserIdValueObject) _then;

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
abstract class _$UserIdValueObjectCopyWith<$Res>
    implements $UserIdValueObjectCopyWith<$Res> {
  factory _$UserIdValueObjectCopyWith(
          _UserIdValueObject value, $Res Function(_UserIdValueObject) then) =
      __$UserIdValueObjectCopyWithImpl<$Res>;
  @override
  $Res call({String? userId});
}

/// @nodoc
class __$UserIdValueObjectCopyWithImpl<$Res>
    extends _$UserIdValueObjectCopyWithImpl<$Res>
    implements _$UserIdValueObjectCopyWith<$Res> {
  __$UserIdValueObjectCopyWithImpl(
      _UserIdValueObject _value, $Res Function(_UserIdValueObject) _then)
      : super(_value, (v) => _then(v as _UserIdValueObject));

  @override
  _UserIdValueObject get _value => super._value as _UserIdValueObject;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_UserIdValueObject(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_UserIdValueObject implements _UserIdValueObject {
  _$_UserIdValueObject({this.userId});

  @override
  final String? userId;

  @override
  String toString() {
    return 'UserIdValueObject(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserIdValueObject &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$UserIdValueObjectCopyWith<_UserIdValueObject> get copyWith =>
      __$UserIdValueObjectCopyWithImpl<_UserIdValueObject>(this, _$identity);
}

abstract class _UserIdValueObject implements UserIdValueObject {
  factory _UserIdValueObject({String? userId}) = _$_UserIdValueObject;

  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$UserIdValueObjectCopyWith<_UserIdValueObject> get copyWith =>
      throw _privateConstructorUsedError;
}
