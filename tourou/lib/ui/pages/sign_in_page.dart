import 'package:flutter/material.dart';
import 'package:tourou/ui/templates/sign_in_template.dart';

class SignInPage extends StatelessWidget {
  final bool isTest;

  const SignInPage({Key? key, required this.isTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SignInTemplate(
        googleFunction: (){},
        appleFunction: (){},
        goBackToTitleFunction: (){},
        isTest: isTest);
  }
}
