import 'package:tourou/domain/entity/user.dart';
import 'package:tourou/domain/repository/user_repository_interface.dart';

import '../lib/domain/value_object/value_object.dart';

class UserTestRepository implements UserRepositoryInterface {
  final List<User> users = [
    User(
      userId: UserId(userId: 'id_1'),
      userName: UserName(userName: 'name_1'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_1'),
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
