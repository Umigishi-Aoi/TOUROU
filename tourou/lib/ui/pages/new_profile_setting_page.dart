// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../templates/new_profile_setting_template.dart';

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
      buttonFunction: () {
        context.go('/how_to_use');
      },
    );
  }
}
