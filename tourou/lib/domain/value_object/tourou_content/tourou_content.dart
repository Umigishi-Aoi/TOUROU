// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourou_content.freezed.dart';

@freezed
class TourouContent with _$TourouContent {
  factory TourouContent({String? tourouContent}) = _TourouContent;
}
