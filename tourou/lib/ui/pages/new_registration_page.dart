// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../templates/new_registration_template.dart';

class NewRegistrationPage extends StatelessWidget {
  final bool isTest;

  const NewRegistrationPage({Key? key, required this.isTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NewRegistrationTemplate(
        googleFunction: () {
          context.go('/new_profile_setting');
        },
        appleFunction: () {
          context.go('/new_profile_setting');
        },
        privacyPolicyFunction: () {
          context.go('/privacy_policy');
        },
        disclaimerFunction: () {
          context.go('/disclaimer');
        },
        goBackToTitleFunction: () {
          context.go('/title');
        },
        isTest: isTest);
  }
}
