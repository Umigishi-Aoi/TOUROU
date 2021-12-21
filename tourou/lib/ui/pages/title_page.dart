// Flutter imports:
import 'package:flutter/material.dart';
import 'package:tourou/gen/assets.gen.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/ui/organisms/title_organism.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorName.mainBlack,
        body: SafeArea(
          child: Center(
            child: TitleOrganism(
                logoPath: Assets.logo.logoA.path,
                additionalTitleText:
                    AppLocalizations.of(context)!.additionalTitleText,
                firstImagePath: Assets.images.enterIcon.path,
                secondImagePath: Assets.images.enterIconTourou.path,
                imageButtonFunction: () {},
                explanationText:
                    AppLocalizations.of(context)!.explanationText,
                textButtonFirstText:
                    AppLocalizations.of(context)!.titleTextButtonFirstText,
                textButtonSecondText:
                    AppLocalizations.of(context)!.titleTextButtonSecondText,
                textButtonFunction: () {}),
          ),
        ));
  }
}
