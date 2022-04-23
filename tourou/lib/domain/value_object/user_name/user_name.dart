// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_name.freezed.dart';

@freezed
class UserName with _$UserName {
  factory UserName({String? userName}) = _UserName;
}
