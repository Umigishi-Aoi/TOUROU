// Flutter imports:
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Project imports:
import '../templates/sign_in_template.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({
    Key? key,
    required this.isTest,
  }) : super(key: key);

  final bool isTest;

  @override
  Widget build(BuildContext context) {
    return SignInTemplate(
      googleFunction: () {},
      appleFunction: () {},
      goBackToTitleFunction: () {
        context.go('/title');
      },
      isTest: isTest,
    );
  }
}
