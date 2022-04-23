// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentification_user_id.freezed.dart';

@freezed
class AuthentificationUserId with _$AuthentificationUserId {
  factory AuthentificationUserId({String? authentificationUserId}) =
      _AuthentificationUserId;
}
