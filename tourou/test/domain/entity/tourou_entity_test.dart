// Package imports:
import 'package:flutter_test/flutter_test.dart';

// Project imports:
import '../../../lib/domain/entity/tourou_entity.dart';
import '../../../lib/domain/value_object/value_object.dart';

void main() {
  //テスト用データのセット

  final tourouId = TourouId(tourouId: 'tourou_id');
  final userId = UserId(userId: 'testUser');
  final userName = UserName(userName: 'Yamada Taro');
  final profilePhotoLink =
      ProfilePhotoLink(profilePhotoLink: 'profile_photo_link');
  final tourouContent = TourouContent(tourouContent: 'content');
  final tourouPhotoLink = TourouPhotoLink(tourouPhotoLink: 'tourou_photo_link');
  final tourouTime =
      TourouTime(tourouTime: DateTime.parse('2022-04-28 23:24:44.019137'));
  final tourouLanguage = TourouLanguage(tourouLanguage: 'Japanese');

  final lUserId_1 = UserId(userId: 'lUser1');
  final lUserId_2 = UserId(userId: 'lUser2');
  final lUserId_3 = UserId(userId: 'lUser3');
  final userIdListTourouLikedBy = [lUserId_1, lUserId_2, lUserId_3];

  final rUserId_1 = UserId(userId: 'rUser1');
  final rUserId_2 = UserId(userId: 'rUser2');
  final rUserId_3 = UserId(userId: 'rUser3');
  final userIdsListTourouReportedBy = [rUserId_1, rUserId_2, rUserId_3];

  final tourouEntity = TourouEntity(
    userId: userId,
    userName: userName,
    profilePhotoLink: profilePhotoLink,
    tourouContent: tourouContent,
    tourouPhotoLink: tourouPhotoLink,
    tourouTime: tourouTime,
    tourouLanguage: tourouLanguage,
    userIdListLikedBy: userIdListTourouLikedBy,
    userIdListReportedBy: userIdsListTourouReportedBy,
    tourouId: tourouId,
  );

  group('User Unit Test', () {
    group('getter', () {
      test('UserId', () {
        expect(tourouEntity.userId, userId);
      });

      test('UserName', () {
        expect(tourouEntity.userName, userName);
      });

      test('ProfilePhotoLink', () {
        expect(tourouEntity.profilePhotoLink, profilePhotoLink);
      });

      test('TourouContent', () {
        expect(tourouEntity.tourouContent, tourouContent);
      });

      test('TourouPhotoLink', () {
        expect(tourouEntity.tourouPhotoLink, tourouPhotoLink);
      });

      test('TourouTime', () {
        expect(tourouEntity.tourouTime, tourouTime);
      });

      test('TourouLanguage', () {
        expect(tourouEntity.tourouLanguage, tourouLanguage);
      });

      test('UserIdListTourouLikedBy', () {
        expect(tourouEntity.userIdListTourouLikedBy, userIdListTourouLikedBy);
      });

      test('UserIdsListTourouReportedBy', () {
        expect(
          tourouEntity.userIdsListTourouReportedBy,
          userIdsListTourouReportedBy,
        );
      });
    });

    group('overrides', () {
      test('==', () {
        final tourouId_2 = TourouId(tourouId: 'testTourouId_2');
        final tourouEntity_2 = TourouEntity(
          userId: userId,
          userName: userName,
          profilePhotoLink: profilePhotoLink,
          tourouContent: tourouContent,
          tourouPhotoLink: tourouPhotoLink,
          tourouTime: tourouTime,
          tourouLanguage: tourouLanguage,
          userIdListLikedBy: userIdListTourouLikedBy,
          userIdListReportedBy: userIdsListTourouReportedBy,
          tourouId: tourouId_2,
        );
        expect(tourouEntity == tourouEntity_2, false);
      });

      test('hashCode', () {
        final tourouEntity_3 = TourouEntity(
          userId: userId,
          userName: userName,
          profilePhotoLink: profilePhotoLink,
          tourouContent: tourouContent,
          tourouPhotoLink: tourouPhotoLink,
          tourouTime: tourouTime,
          tourouLanguage: tourouLanguage,
          userIdListLikedBy: userIdListTourouLikedBy,
          userIdListReportedBy: userIdsListTourouReportedBy,
          tourouId: tourouId,
        );
        expect(tourouEntity.hashCode, tourouEntity_3.hashCode);
      });
    });

    group('added method', () {
      test('_userName', () {
        final testUserName = UserName(userName: 'Ozaki Yutaka');

        tourouEntity.changeUserName(testUserName);

        expect(tourouEntity.userName, testUserName);
      });

      test('_profilePhotoLink', () {
        final testProfilePhotoLink =
            ProfilePhotoLink(profilePhotoLink: 'test_profile_photo_link');

        tourouEntity.changeProfilePhotoLink(testProfilePhotoLink);

        expect(tourouEntity.profilePhotoLink, testProfilePhotoLink);
      });

      final likedUserId = UserId(userId: 'likedUserId');
      test('add likedUserId', () {
        tourouEntity.addUserIdInLikedList(likedUserId);

        expect(
          tourouEntity.userIdListTourouLikedBy,
          [lUserId_1, lUserId_2, lUserId_3, likedUserId],
        );
      });

      test('delete likedUserId', () {
        final likedUserId_2 = UserId(userId: 'likedUserId_2');

        tourouEntity
          ..deleteUserIdInLikedList(likedUserId)
          ..deleteUserIdInLikedList(likedUserId_2);

        expect(
          tourouEntity.userIdListTourouLikedBy,
          [lUserId_1, lUserId_2, lUserId_3],
        );
      });

      test('get the number of userIds in liked list', () {
        expect(
          tourouEntity.getNumberOfUserIdInLikedList(),
          3,
        );
      });

      final reportedUserId = UserId(userId: 'reportedUserId');
      test('add reportedUserId', () {
        tourouEntity.addUserIdInReportedList(reportedUserId);

        expect(
          tourouEntity.userIdsListTourouReportedBy,
          [rUserId_1, rUserId_2, rUserId_3, reportedUserId],
        );
      });

      test('delete reportedUserId', () {
        final reportedUserId_2 = UserId(userId: 'reportedUserId_2');

        tourouEntity
          ..deleteUserIdInReportedList(reportedUserId)
          ..deleteUserIdInReportedList(reportedUserId_2);

        expect(
          tourouEntity.userIdsListTourouReportedBy,
          [rUserId_1, rUserId_2, rUserId_3],
        );
      });

      test('get the number of userIds in reported list', () {
        expect(
          tourouEntity.getNumberOfUserIdInReportedList(),
          3,
        );
      });
    });
  });
}
