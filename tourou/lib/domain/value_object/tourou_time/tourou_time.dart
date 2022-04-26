// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourou_time.freezed.dart';

@freezed
class TourouTime with _$TourouTime {
  factory TourouTime({DateTime? tourouTime}) = _TourouTime;
}
