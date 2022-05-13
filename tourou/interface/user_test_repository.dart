import 'package:tourou/domain/entity/user.dart';
import 'package:tourou/domain/repository/user_repository_interface.dart';

import '../lib/domain/value_object/value_object.dart';

class UserTestRepository implements UserRepositoryInterface {
  final List<User> users = [
    User(
      userId: UserId(userId: 'id_0'),
      userName: UserName(userName: 'name_0'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_0'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_1'),
      userName: UserName(userName: 'name_1'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_1'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_2'),
      userName: UserName(userName: 'name_2'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_2'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_3'),
      userName: UserName(userName: 'name_3'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_3'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_4'),
      userName: UserName(userName: 'name_4'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_4'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_5'),
      userName: UserName(userName: 'name_5'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_5'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_6'),
      userName: UserName(userName: 'name_6'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_6'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_7'),
      userName: UserName(userName: 'name_7'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_7'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_8'),
      userName: UserName(userName: 'name_8'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_8'),
      blockedUsers: [],
      goodTourous: [],
    ),
    User(
      userId: UserId(userId: 'id_9'),
      userName: UserName(userName: 'name_9'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_9'),
      blockedUsers: [],
      goodTourous: [],
    ),
  ];

  @override
  void appleSignIn() {
    // TODO: implement appleSignIn
  }

  @override
  void appleSignUp() {
    // TODO: implement appleSignUp
  }

  @override
  void deleteAccount(String id) {
    // TODO: implement deleteAccount
  }

  @override
  void editUser() {
    // TODO: implement editUser
  }

  @override
  void googleSignIn() {
    // TODO: implement googleSignIn
  }

  @override
  void googleSignUp() {
    // TODO: implement googleSignUp
  }

  @override
  bool isContainedUserId(String id) {
    // TODO: implement isContainedUserId
    throw UnimplementedError();
  }

  @override
  void saveUser() {
    // TODO: implement saveUser
  }

  @override
  void signOut() {
    // TODO: implement signOut
  }
}
