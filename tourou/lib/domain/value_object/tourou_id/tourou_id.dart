// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourou_id.freezed.dart';

@freezed
class TourouId with _$TourouId {
  factory TourouId({String? tourouId}) = _TourouId;
}
