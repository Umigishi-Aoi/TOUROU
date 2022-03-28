// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../templates/language_setting_template.dart';

class LanguageSettingPage extends StatelessWidget {
  const LanguageSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LanguageSettingTemplate(
      backFunction: () {},
      englishFunction: (flag) {},
      japaneseFunction: (flag) {},
    );
  }
}
