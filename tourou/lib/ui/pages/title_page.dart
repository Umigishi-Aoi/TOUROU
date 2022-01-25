// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../templates/title_template.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleTemplate(imageButtonFunction: () {}, textButtonFunction: () {});
  }
}
