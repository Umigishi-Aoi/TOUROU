import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/ui/atoms/custom_textfield.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';

class NewTourouTemplate extends StatelessWidget {
  final TextEditingController controller;

  const NewTourouTemplate({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            CustomTextField(
              hint: hint,
              controller: controller,
              height: height,
              width: width,
              minLines: minLines,
              fontSize: fontSize,
              textColor: ColorName.mainBlack,
              fontFamily: FontFamily.mplus1,
              fillColor: ColorName.tourouBackground,
              borderColor: ColorName.tourouBackground,
              textInputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'{,300}')),
              ],
            ),
            CustomElevatedButton(
              text: text,
              color: ColorName.mainBlack,
              fontSize: fontSize,
              fontFamily: FontFamily.mplus1,
              height: height,
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
