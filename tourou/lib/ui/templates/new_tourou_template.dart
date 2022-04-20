// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_check_box.dart';
import '../atoms/custom_text.dart';
import '../atoms/custom_textfield.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/custom_icon_button.dart';

class NewTourouTemplate extends StatelessWidget {
  const NewTourouTemplate({
    Key? key,
    required this.controller,
    required this.buttonFunction,
    required this.checkFunction,
    required this.backFunction,
  }) : super(key: key);

  final TextEditingController controller;

  final void Function() buttonFunction;
  final void Function(bool?) checkFunction;
  final void Function() backFunction;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    final width = displayWidth * buttonWidthRatio;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      appBar: AppBar(
        leading: Center(
          child: CustomText(
            text: AppLocalizations.of(context)!.back,
            color: ColorName.switchAccentColor,
            fontSize: newTourouFontSize,
            fontFamily: FontFamily.mplus1,
            function: backFunction,
          ),
        ),
        backgroundColor: ColorName.mainBlack,
      ),
      body: Center(
        child: ListView(
          children: [
            CustomTextField(
              hint: AppLocalizations.of(context)!.newTourouHint,
              controller: controller,
              height: displayHeight * newTourouTextFieldHeightRatio,
              width: width,
              maxLines: newTourouTextFieldMaxLines,
              maxLength: newTourouTextFieldMaxLength,
              fontSize: newTourouFontSize,
              textColor: ColorName.mainBlack,
              fontFamily: FontFamily.mplus1,
              fillColor: ColorName.tourouBackground,
              borderColor: ColorName.tourouBackground,
              counterColor: ColorName.textWhite,
              textInputFormatters: const [],
              autofocus: true,
            ),
            Padding(
              padding: EdgeInsets.only(
                bottom: displayHeight * newTourouButtonTopMarginRatio,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomIconButton(
                    function: buttonFunction,
                    iconData: Icons.insert_photo,
                    size: displayHeight * newTourouIconHeightRatio,
                    color: ColorName.textWhite,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomText(
                        text: AppLocalizations.of(context)!.notShare,
                        color: ColorName.textWhite,
                        fontSize: displayHeight *
                            buttonHeightRatio *
                            buttonHeightFontSizeRatio,
                        fontFamily: FontFamily.mplus1,
                      ),
                      CustomCheckBox(
                        activeColor: ColorName.switchAccentColor,
                        borderColor: ColorName.textWhite,
                        onChanged: checkFunction,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            CustomElevatedButton(
              text: AppLocalizations.of(context)!.gims,
              color: ColorName.mainBlack,
              fontSize:
                  displayHeight * buttonHeightRatio * buttonHeightFontSizeRatio,
              fontFamily: FontFamily.mplus1,
              height: displayHeight * buttonHeightRatio,
              width: width,
              buttonColor: ColorName.tourouBackground,
              function: buttonFunction,
            )
          ],
        ),
      ),
    );
  }
}
