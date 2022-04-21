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
  const DeleteAccountDialog({
    Key? key,
    required this.yesFunction,
    required this.noFunction,
  }) : super(key: key);

  final void Function() yesFunction;
  final void Function() noFunction;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    final dialogButtonHeight = displayHeight * dialogButtonHeightRatio;
    final dialogButtonWidth = displayWidth * dialogButtonWidthRatio;
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
          key: const ValueKey('Yes Button'),
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
          key: const ValueKey('No Button'),
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
      actionsAlignment: MainAxisAlignment.spaceEvenly,
    );
  }
}
