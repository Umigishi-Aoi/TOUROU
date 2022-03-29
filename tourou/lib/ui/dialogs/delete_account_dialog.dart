// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';
import '../molecules/custom_elevated_button.dart';

class DeleteAccountDialog extends StatelessWidget {
  final void Function() yesFunction;
  final void Function() noFunction;

  const DeleteAccountDialog({
    Key? key,
    required this.yesFunction,
    required this.noFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double dialogButtonHeight = displayHeight * dialogButtonHeightRatio;
    final double dialogButtonWidth = displayWidth * dialogButtonWidthRatio;
    return AlertDialog(
        title: CustomText(
          text: AppLocalizations.of(context)!.deleteAccount,
          color: ColorName.signInButtonBlack,
          fontSize: howToUseTitleFontSize,
          fontFamily: FontFamily.mplus1,
        ),
        content: CustomText(
          text: AppLocalizations.of(context)!.deleteAccountContent,
          color: ColorName.signInButtonBlack,
          fontSize: mainTextFontSize,
          fontFamily: FontFamily.mplus1,
        ),
        actions: [
          CustomElevatedButton(
            key: ValueKey('Yes Button'),
            text: AppLocalizations.of(context)!.yes,
            color: ColorName.signInButtonBlack,
            fontSize: mainTextFontSize,
            fontFamily: FontFamily.mplus1,
            height: dialogButtonHeight,
            width: dialogButtonWidth,
            buttonColor: ColorName.tourouBackground,
            function: yesFunction,
          ),
          CustomElevatedButton(
            key: ValueKey('No Button'),
            text: AppLocalizations.of(context)!.no,
            color: ColorName.signInButtonBlack,
            fontSize: mainTextFontSize,
            fontFamily: FontFamily.mplus1,
            height: dialogButtonHeight,
            width: dialogButtonWidth,
            buttonColor: ColorName.tourouBackground,
            function: noFunction,
          ),
        ],
        actionsAlignment: MainAxisAlignment.spaceEvenly);
  }
}
