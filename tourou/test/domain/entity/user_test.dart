// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../lib/domain/entity/user.dart';
import '../../../lib/domain/value_object/value_object.dart';

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

    group('overrides', () {
      test('==', () {
        final userId_2 = UserId(userId: 'testUserId_2');
        final user_2 = User(
          userId: userId_2,
          userName: userName,
          profilePhotoLink: profilePhotoLink,
          blockedUsers: blockedUsers,
          goodTourous: goodTourous,
        );
        expect(user == user_2, false);
      });

      test('hashCode', () {
        final user_3 = User(
          userId: userId,
          userName: userName,
          profilePhotoLink: profilePhotoLink,
          blockedUsers: blockedUsers,
          goodTourous: goodTourous,
        );
        expect(user.hashCode, user_3.hashCode);
      });
    });

    group('added method', () {
      test('_userName', () {
        final testUserName = UserName(userName: 'Ozaki Yutaka');

        user.changeUserName(testUserName);

        expect(user.userName, testUserName);
      });

      test('_profilePhotoLink', () {
        final testProfilePhotoLink =
            ProfilePhotoLink(profilePhotoLink: 'test_profile_photo_link');

        user.changeProfilePhotoLink(testProfilePhotoLink);

        expect(user.profilePhotoLink, testProfilePhotoLink);
      });

      test('add blockedUsers', () {
        final blockedUserId = UserId(userId: 'blockedUserId');

        user.addUserIdToBlockList(blockedUserId);

        expect(
          user.blockedUsers,
          [bUserId_1, bUserId_2, bUserId_3, blockedUserId],
        );
      });

      final goodTourouId = TourouId(tourouId: 'goodTourouId');
      test('add goodTourou', () {
        user.addTourouIdToGoodList(goodTourouId);

        expect(
          user.goodTourous,
          [gTourouId_1, gTourouId_2, gTourouId_3, goodTourouId],
        );
      });

      test('delete goodTourou', () {
        final goodTourouId_2 = TourouId(tourouId: 'goodTourouId_2');

        user
          ..deleteTourouIdFromGoodList(goodTourouId)
          ..deleteTourouIdFromGoodList(goodTourouId_2);

        expect(
          user.goodTourous,
          [gTourouId_1, gTourouId_2, gTourouId_3],
        );
      });
    });
  });
}
