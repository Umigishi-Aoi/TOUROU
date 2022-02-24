// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourou/ui/atoms/custom_check_box.dart';
import 'package:tourou/ui/atoms/custom_text.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_textfield.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/custom_icon_button.dart';

class NewTourouTemplate extends StatelessWidget {
  final TextEditingController controller;

  final void Function() buttonFunction;
  final void Function(bool?) checkFunction;

  const NewTourouTemplate({
    Key? key,
    required this.controller,
    required this.buttonFunction,
    required this.checkFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double width = displayWidth * buttonWidthRatio;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      appBar: AppBar(
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
              fontSize: newTourouFontSize,
              textColor: ColorName.mainBlack,
              fontFamily: FontFamily.mplus1,
              fillColor: ColorName.tourouBackground,
              borderColor: ColorName.tourouBackground,
              textInputFormatters: [
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  function: buttonFunction,
                  iconData: Icons.insert_photo,
                  size: displayHeight * newTourouIconHeightRatio,
                  color: ColorName.textWhite,
                ),
                Row(
                  crossAxisAlignment:CrossAxisAlignment.center,
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
                      activeColor: ColorName.goodBackgoround,
                      borderColor: ColorName.textWhite,
                      onChanged: checkFunction,
                    ),
                  ],
                ),
              ],
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
