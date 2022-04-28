import 'package:flutter_test/flutter_test.dart';
import 'package:tourou/domain/entity/user.dart';
import 'package:tourou/domain/value_object/value_object.dart';

void main() {
  //テスト用データのセット

  final userId = UserId(userId: 'testUser');
  final userName = UserName(userName: 'Yamada Taro');
  final profilePhotoLink =
      ProfilePhotoLink(profilePhotoLink: 'profile_photo_link');
  final bUserId_1 = UserId(userId: 'bUser1');
  final bUserId_2 = UserId(userId: 'bUser2');
  final bUserId_3 = UserId(userId: 'bUser3');
  final blockedUsers = [bUserId_1, bUserId_2, bUserId_3];
  final gTourouId_1 = TourouId(tourouId: 'gTourouId_1');
  final gTourouId_2 = TourouId(tourouId: 'gTourouId_2');
  final gTourouId_3 = TourouId(tourouId: 'gTourouId_3');
  final goodTourous = [gTourouId_1, gTourouId_2, gTourouId_3];

  final user = User(
    userId: userId,
    userName: userName,
    profilePhotoLink: profilePhotoLink,
    blockedUsers: blockedUsers,
    goodTourous: goodTourous,
  );

  group('User Unit Test', () {
    group('getter', () {
      test('UserName', () {
        expect(user.userName, userName);
      });

      test('ProfilePhotoLink', () {
        expect(user.profilePhotoLink, profilePhotoLink);
      });

      test('BlockedUsers', () {
        expect(user.blockedUsers, blockedUsers);
      });

      test('GoodTourous', () {
        expect(user.goodTourous, goodTourous);
      });
    });
  });
}
