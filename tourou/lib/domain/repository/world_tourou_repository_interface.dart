// Project imports:
import '../entity/tourou_entity.dart';
import '../value_object/tourou_language/tourou_language.dart';

abstract class WorldTourouRepositoryInterface {
  Future<List<TourouEntity>> getTourouOrderedByGood();

  Future<List<TourouEntity>> getTourouOrderedBynew();

  Future<void> deleteTourou(TourouEntity tourou);

  Future<void> addTourou(TourouEntity tourou);

  Future<void> changeLanguage(TourouLanguage language);
}
