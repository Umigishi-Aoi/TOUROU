// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_photo_link.freezed.dart';

@freezed
class ProfilePhotoLink with _$ProfilePhotoLink {
  factory ProfilePhotoLink({String? profilePhotoLink}) = _ProfilePhotoLink;
}
