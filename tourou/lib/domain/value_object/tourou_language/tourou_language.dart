// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tourou_language.freezed.dart';

@freezed
class TourouLanguage with _$TourouLanguage {
  factory TourouLanguage({String? tourouLanguage}) = _TourouLanguage;
}
