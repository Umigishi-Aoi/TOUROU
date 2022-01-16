// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../templates/new_registration_template.dart';

class NewRegistrationPage extends StatelessWidget {
  final bool isTest;

  const NewRegistrationPage({Key? key, required this.isTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewRegistrationTemplate(
        googleFunction: () {},
        appleFunction: () {},
        privacyPolicyFunction: () {},
        disclaimerFunction: () {},
        goBackToTitleFunction: () {},
        isTest: isTest);
  }
}
