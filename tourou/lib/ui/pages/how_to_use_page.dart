// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../l10n/app_localizations.dart';
import '../organisms/how_to_use_organism.dart';

class HowToUsePage extends StatelessWidget {
  const HowToUsePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: HowToUseOrganisms(
            titleText: AppLocalizations.of(context)!.howToUseTitle,
            buttonText: AppLocalizations.of(context)!.howToUseText,
            function: () {},
          ),
        ),
      ),
    );
  }
}
