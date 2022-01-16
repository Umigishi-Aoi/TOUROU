import 'package:flutter/material.dart';
import 'package:tourou/ui/templates/new_registration_template.dart';

class NewRegistrationPage extends StatelessWidget {
  final bool isTest;

  const NewRegistrationPage({Key? key, required this.isTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewRegistrationTemplate(
        googleIcon: googleIcon,
        appleIcon: appleIcon,
        googleFunction: googleFunction,
        appleFunction: appleFunction,
        privacyPolicyFunction: privacyPolicyFunction,
        disclaimerFunction: disclaimerFunction,
        goBackToTitleFunction: goBackToTitleFunction,
        isTest: isTest);
  }
}
