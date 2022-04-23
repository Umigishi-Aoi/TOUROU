// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentification_user_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthentificationUserId {
  String? get authentificationUserId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthentificationUserIdCopyWith<AuthentificationUserId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthentificationUserIdCopyWith<$Res> {
  factory $AuthentificationUserIdCopyWith(AuthentificationUserId value,
          $Res Function(AuthentificationUserId) then) =
      _$AuthentificationUserIdCopyWithImpl<$Res>;
  $Res call({String? authentificationUserId});
}

/// @nodoc
class _$AuthentificationUserIdCopyWithImpl<$Res>
    implements $AuthentificationUserIdCopyWith<$Res> {
  _$AuthentificationUserIdCopyWithImpl(this._value, this._then);

  final AuthentificationUserId _value;
  // ignore: unused_field
  final $Res Function(AuthentificationUserId) _then;

  @override
  $Res call({
    Object? authentificationUserId = freezed,
  }) {
    return _then(_value.copyWith(
      authentificationUserId: authentificationUserId == freezed
          ? _value.authentificationUserId
          : authentificationUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$AuthentificationUserIdCopyWith<$Res>
    implements $AuthentificationUserIdCopyWith<$Res> {
  factory _$AuthentificationUserIdCopyWith(_AuthentificationUserId value,
          $Res Function(_AuthentificationUserId) then) =
      __$AuthentificationUserIdCopyWithImpl<$Res>;
  @override
  $Res call({String? authentificationUserId});
}

/// @nodoc
class __$AuthentificationUserIdCopyWithImpl<$Res>
    extends _$AuthentificationUserIdCopyWithImpl<$Res>
    implements _$AuthentificationUserIdCopyWith<$Res> {
  __$AuthentificationUserIdCopyWithImpl(_AuthentificationUserId _value,
      $Res Function(_AuthentificationUserId) _then)
      : super(_value, (v) => _then(v as _AuthentificationUserId));

  @override
  _AuthentificationUserId get _value => super._value as _AuthentificationUserId;

  @override
  $Res call({
    Object? authentificationUserId = freezed,
  }) {
    return _then(_AuthentificationUserId(
      authentificationUserId: authentificationUserId == freezed
          ? _value.authentificationUserId
          : authentificationUserId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AuthentificationUserId implements _AuthentificationUserId {
  _$_AuthentificationUserId({this.authentificationUserId});

  @override
  final String? authentificationUserId;

  @override
  String toString() {
    return 'AuthentificationUserId(authentificationUserId: $authentificationUserId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthentificationUserId &&
            const DeepCollectionEquality()
                .equals(other.authentificationUserId, authentificationUserId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(authentificationUserId));

  @JsonKey(ignore: true)
  @override
  _$AuthentificationUserIdCopyWith<_AuthentificationUserId> get copyWith =>
      __$AuthentificationUserIdCopyWithImpl<_AuthentificationUserId>(
          this, _$identity);
}

abstract class _AuthentificationUserId implements AuthentificationUserId {
  factory _AuthentificationUserId({final String? authentificationUserId}) =
      _$_AuthentificationUserId;

  @override
  String? get authentificationUserId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthentificationUserIdCopyWith<_AuthentificationUserId> get copyWith =>
      throw _privateConstructorUsedError;
}
