// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourou_photo_link.freezed.dart';

@freezed
class TourouPhotoLink with _$TourouPhotoLink {
  factory TourouPhotoLink({String? tourouPhotoLink}) = _TourouPhotoLink;
}
