import '../value_object/value_object.dart';

class User {
  const User({
    required this.userId,
    required this.userName,
    required this.profilePhotoLink,
    required this.blockedUsers,
    required this.goodTourous,
  });

  final UserId userId;
  final UserName userName;
  final ProfilePhotoLink profilePhotoLink;
  final List<UserId> blockedUsers;
  final List<TourouId> goodTourous;
}
