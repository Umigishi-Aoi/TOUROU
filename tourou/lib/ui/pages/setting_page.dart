// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../templates/setting_template.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({
    Key? key,
    required this.isTest,
  }) : super(key: key);

  final bool isTest;

  @override
  Widget build(BuildContext context) {
    return SettingTemplate(
      editProfileFunction: () {},
      setLanguageFunction: () {},
      howToUseFunction: () {},
      disclaimerFunction: () {},
      privacyPolicyFunction: () {},
      logOutFunction: () {},
      deleteAccountFunction: () {},
      isTest: isTest,
    );
  }
}
