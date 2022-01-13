import 'package:flutter/material.dart';
import 'package:tourou/ui/templates/new_user_registration_template.dart';

class NewUserRegistrationPage extends StatefulWidget {
  const NewUserRegistrationPage({Key? key}) : super(key: key);

  @override
  _NewUserRegistrationPageState createState() =>
      _NewUserRegistrationPageState();
}

class _NewUserRegistrationPageState extends State<NewUserRegistrationPage> {
  TextEditingController userIdController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  void dispose() {
    userIdController.dispose();
    userNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NewUserRegistrationTemplate(
      userIdController: userIdController,
      userNameController: userNameController,
      imageFunction: () {},
      buttonFunction: () {},
    );
  }
}
