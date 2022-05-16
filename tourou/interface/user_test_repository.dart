import 'package:tourou/domain/entity/user.dart';
import 'package:tourou/domain/repository/user_repository_interface.dart';

import '../lib/domain/value_object/value_object.dart';

class UserTestRepository implements UserRepositoryInterface {
  final List<User> users = List<User>.generate(
    10,
    (index) => User(
      userId: UserId(userId: 'id_$index'),
      userName: UserName(userName: 'name_$index'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_$index'),
      blockedUsers: [],
      goodTourous: [],
    ),
  );

  User? currentUser;

  @override
  void appleSignIn() {
    currentUser = users[0];
  }

  @override
  void appleSignUp() {
    final newUser = User(
      userId: UserId(userId: 'id_new'),
      userName: UserName(userName: 'name_new'),
      profilePhotoLink: ProfilePhotoLink(profilePhotoLink: 'link_new'),
      blockedUsers: [],
      goodTourous: [],
    );

    if (!users.contains(newUser)) {
      users.add(newUser);
    }

    currentUser = newUser;
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
