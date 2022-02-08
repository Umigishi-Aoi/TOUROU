import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/atoms/custom_textfield.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';
import 'package:tourou/ui/molecules/custom_icon_button.dart';

class NewTourouTemplate extends StatelessWidget {
  final TextEditingController controller;

  final void Function() function;

  const NewTourouTemplate(
      {Key? key, required this.controller, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery
        .of(context)
        .size
        .height;
    final double displayWidth = MediaQuery
        .of(context)
        .size
        .width;
    final double width = displayWidth * buttonWidthRatio;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CustomTextField(
              hint: hint,
              controller: controller,
              height: displayHeight * newTourouTextFieldHeightRatio,
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
            CustomIconButton(function: function,
              iconData: Icons.insert_photo,
              size: displayHeight * newTourouIconHeightRatio,
              color: ColorName.textWhite,
            ),
            CustomElevatedButton(
              text: text,
              color: ColorName.mainBlack,
              fontSize: displayHeight *
                  buttonHeightRatio *
                  buttonHeightFontSizeRatio,
              fontFamily: FontFamily.mplus1,
              height: displayHeight * buttonHeightRatio,
              width: width,
              buttonColor: ColorName.tourouBackground,
              function: function,
            )
          ],
        ),
      ),
    )
  }
}
