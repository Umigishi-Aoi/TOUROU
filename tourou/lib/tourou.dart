// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'l10n/app_localizations.dart';
import 'ui/pages/new_tourou_page.dart';

// Package imports:

class Tourou extends StatelessWidget {
  const Tourou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: NewTourouPage(),
    );
  }
}
