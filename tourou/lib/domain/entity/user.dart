// Project imports:
import '../value_object/value_object.dart';

class User {
  const User({
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
  final UserName _userName;
  final ProfilePhotoLink _profilePhotoLink;
  final List<UserId> _blockedUsers;
  final List<TourouId> _goodTourous;

  UserName get userName => _userName;
  ProfilePhotoLink get profilePhotoLink => _profilePhotoLink;
  List<UserId> get blockedUsers => _blockedUsers;
  List<TourouId> get goodTourous => _goodTourous;

  User copyWith({
    UserId? userId,
    UserName? userName,
    ProfilePhotoLink? profilePhotoLink,
    List<UserId>? blockedUsers,
    List<TourouId>? goodTourous,
  }) {
    return User(
      userId: userId ?? this.userId,
      userName: userName ?? this.userName,
      profilePhotoLink: profilePhotoLink ?? this.profilePhotoLink,
      blockedUsers: blockedUsers ?? this.blockedUsers,
      goodTourous: goodTourous ?? this.goodTourous,
    );
  }

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
}
