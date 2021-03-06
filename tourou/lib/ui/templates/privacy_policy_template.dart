// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

class PrivacyPolicyTemplate extends StatelessWidget {
  const PrivacyPolicyTemplate({
    Key? key,
    required this.backFunction,
  }) : super(key: key);

  final void Function() backFunction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorName.mainBlack,
        title: CustomText(
          text: AppLocalizations.of(context)!.privacyPolicy,
          color: ColorName.textWhite,
          fontSize: newTourouFontSize,
          fontFamily: FontFamily.mplus1,
        ),
        leading: Center(
          child: CustomText(
            text: AppLocalizations.of(context)!.back,
            color: ColorName.switchAccentColor,
            fontSize: newTourouFontSize,
            fontFamily: FontFamily.mplus1,
            function: backFunction,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(textPadding),
        child: ListView(
          children: [
            CustomText(
              color: ColorName.textWhite,
              fontSize: mainTextFontSize,
              text: AppLocalizations.of(context)!.privacyPolicyText,
              fontFamily: FontFamily.mplus1,
            ),
          ],
        ),
      ),
    );
  }
}
