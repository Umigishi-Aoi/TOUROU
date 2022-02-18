// Flutter imports:
import 'package:flutter/material.dart';
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

  final void Function() function;
  final void Function(bool?) checkFunction;

  const NewTourouTemplate({
    Key? key,
    required this.controller,
    required this.function,
    required this.checkFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double width = displayWidth * buttonWidthRatio;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListView(
          children: [
            CustomTextField(
              hint: AppLocalizations.of(context)!.newTourouHint,
              controller: controller,
              height: double.infinity,
              width: width,
              minLines: newTourouTextFieldMinLines,
              fontSize: newTourouFontSize,
              textColor: ColorName.mainBlack,
              fontFamily: FontFamily.mplus1,
              fillColor: ColorName.tourouBackground,
              borderColor: ColorName.tourouBackground,
              textInputFormatters: [
                newTourouFormatter,
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  function: function,
                  iconData: Icons.insert_photo,
                  size: displayHeight * newTourouIconHeightRatio,
                  color: ColorName.textWhite,
                ),
                Row(
                  children: [
                    CustomText(
                      text: text,
                      color: ColorName.textWhite,
                      fontSize: displayHeight *
                          buttonHeightRatio *
                          buttonHeightFontSizeRatio,
                      fontFamily: FontFamily.mplus1,
                    ),
                    CustomCheckBox(
                      color: ColorName.itemBackground,
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
              function: function,
            )
          ],
        ),
      ),
    );
  }
}
