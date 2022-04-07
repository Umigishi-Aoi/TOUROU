// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:go_router/go_router.dart';

// Project imports:
import '../templates/title_template.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TitleTemplate(
      imageButtonFunction: () {
        context.go('/new_registration');
      },
      textButtonFunction: () {
        context.go('/sign_in');
      },
    );
  }
}
