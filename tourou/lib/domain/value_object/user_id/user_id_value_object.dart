// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_id_value_object.freezed.dart';

@freezed
class UserIdValueObject with _$UserIdValueObject {
  factory UserIdValueObject({String? userId}) = _UserIdValueObject;
}
