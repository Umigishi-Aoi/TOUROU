abstract class UserRepositoryInterface {
  UserRepositoryInterface();

  void googleSignUp();

  void appleSignUp();

  void googleSignIn();

  void appleSignIn();

  bool isContainedUserId(String id);

  void signOut();

  void deleteAccount(String id);

  void saveUser();

  void editUser();
}
