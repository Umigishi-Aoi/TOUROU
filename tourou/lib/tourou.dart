// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'l10n/app_localizations.dart';
import 'router.dart';

// Package imports:

class Tourou extends ConsumerWidget {
  const Tourou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: ref.watch(router).routerDelegate,
      routeInformationParser: ref.watch(router).routeInformationParser,
    );
  }
}
