// ignore_for_file: use_setters_to_change_properties

// Project imports:
import '../value_object/value_object.dart';

class User {
  User({
    required this.userId,
    required UserName userName,
    required ProfilePhotoLink profilePhotoLink,
    required List<UserId> blockedUsers,
    required List<TourouId> goodTourous,
  })  : _userName = userName,
        _profilePhotoLink = profilePhotoLink,
        _blockedUsers = blockedUsers,
        _goodTourous = goodTourous;

  final UserId userId;
  UserName _userName;
  ProfilePhotoLink _profilePhotoLink;
  final List<UserId> _blockedUsers;
  final List<TourouId> _goodTourous;

  UserName get userName => _userName;
  ProfilePhotoLink get profilePhotoLink => _profilePhotoLink;
  List<UserId> get blockedUsers => _blockedUsers;
  List<TourouId> get goodTourous => _goodTourous;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    return other is User && other.userId == userId;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
        userName.hashCode ^
        profilePhotoLink.hashCode ^
        blockedUsers.hashCode ^
        goodTourous.hashCode;
  }

  void changeUserName(UserName newUserName) {
    _userName = newUserName;
  }

  void changeProfilePhotoLink(ProfilePhotoLink newProfilePhotoLink) {
    _profilePhotoLink = newProfilePhotoLink;
  }

  void addUserIdToBlockList(UserId newBlockUserId) {
    _blockedUsers.add(newBlockUserId);
  }

  void addTourouIdToGoodList(TourouId newGoodTourouId) {
    _goodTourous.add(newGoodTourouId);
  }

  void deleteTourouIdFromGoodList(TourouId goodTourouId) {
    if (_goodTourous.contains(goodTourouId)) {
      _goodTourous.remove(goodTourouId);
    }
  }
}
