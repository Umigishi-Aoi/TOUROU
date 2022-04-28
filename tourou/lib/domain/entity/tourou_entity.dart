// ignore_for_file: use_setters_to_change_properties

// Project imports:
import '../value_object/value_object.dart';

class TourouEntity {
  TourouEntity({
    required UserId userId,
    required UserName userName,
    required ProfilePhotoLink profilePhotoLink,
    required TourouContent tourouContent,
    required TourouPhotoLink tourouPhotoLink,
    required TourouTime tourouTime,
    required TourouLanguage tourouLanguage,
    required List<UserId> userIdListTourouLikedBy,
    required List<UserId> userIdsListTourouReportedBy,
    required this.tourouId,
  })  : _userId = userId,
        _userName = userName,
        _profilePhotoLink = profilePhotoLink,
        _tourouContent = tourouContent,
        _tourouPhotoLink = tourouPhotoLink,
        _tourouTime = tourouTime,
        _tourouLanguage = tourouLanguage,
        _userIdListTourouLikedBy = userIdListTourouLikedBy,
        _userIdsListTourouReportedBy = userIdsListTourouReportedBy;

  final TourouId tourouId;
  final UserId _userId;
  final UserName _userName;
  final ProfilePhotoLink _profilePhotoLink;
  final TourouContent _tourouContent;
  final TourouPhotoLink _tourouPhotoLink;
  final TourouTime _tourouTime;
  final TourouLanguage _tourouLanguage;
  final List<UserId> _userIdListTourouLikedBy;
  final List<UserId> _userIdsListTourouReportedBy;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is TourouEntity && other.tourouId == tourouId;
  }

  @override
  int get hashCode {
    return tourouId.hashCode ^
        _userId.hashCode ^
        _userName.hashCode ^
        _profilePhotoLink.hashCode ^
        _tourouContent.hashCode ^
        _tourouPhotoLink.hashCode ^
        _tourouTime.hashCode ^
        _tourouLanguage.hashCode ^
        _userIdListTourouLikedBy.hashCode ^
        _userIdsListTourouReportedBy.hashCode;
  }
}
