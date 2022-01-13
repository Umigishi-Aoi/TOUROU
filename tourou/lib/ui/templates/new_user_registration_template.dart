import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';
import 'package:tourou/ui/molecules/image_button.dart';
import 'package:tourou/ui/molecules/text_textField.dart';

class NewUserRegistrationTemplate extends StatelessWidget {
  const NewUserRegistrationTemplate({Key? key}) : super(key: key);

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
    final double fieldHeight = displayHeight *
        newUserRegistrationFieldHeightRatio;
    final double fieldFontSize = fieldHeight *
        newUserRegistrationFieldFontSizeRatio;
    final double fieldWidth = displayWidth * buttonWidthRatio;
    return Scaffold(
        backgroundColor: ColorName.mainBlack,
        body: SafeArea(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: displayHeight *
                            newUserRegistrationImageTopMarginRatio,
                      )
                      ImageButton(
                        firstImagePath: firstImagePath,
                        height: displayHeight *
                            newUserRegistrationImageHeightRatio,
                        function: function,
                        fit: fit,
                        isCircle: isCircle,
                        duration: duration,
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            newUserRegistrationFieldPadding),
                        child: TextTextField(
                          text: text,
                          titleTextColor: titleTextColor,
                          titleFontSize: fieldFontSize,
                          fontFamily: fontFamily,
                          hint: hint,
                          controller: controller,
                          height: fieldHeight,
                          width: fieldWidth,
                          minLines: minLines,
                          fieldFontSize: fieldFontSize,
                          fieldTextColor: fieldTextColor,
                          fillColor: fillColor,
                          borderColor: borderColor,
                          textInputFormatters: textInputFormatters,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            newUserRegistrationFieldPadding),
                        child: TextTextField(
                          text: text,
                          titleTextColor: titleTextColor,
                          titleFontSize: fieldFontSize,
                          fontFamily: fontFamily,
                          hint: hint,
                          controller: controller,
                          height: fieldHeight,
                          width: fieldWidth
                          minLines: minLines,
                          fieldFontSize: fieldFontSize,
                          fieldTextColor: fieldTextColor,
                          fillColor: fillColor,
                          borderColor: borderColor,
                          textInputFormatters: textInputFormatters,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: displayHeight *
                        newUserRegistrationButtonTopMarginRatio,
                  ),
                  Padding(
                    padding: EdgeInsets.all(newUserRegistrationButtonMargin),
                    child: CustomElevatedButton(
                      text: text,
                      color: color,
                      fontSize: displayHeight * buttonHeightRatio *
                          buttonHeightFontSizeRatio,
                      fontFamily: fontFamily,
                      height: displayHeight * buttonHeightRatio,
                      width: displayWidth * buttonWidthRatio,
                      buttonColor: buttonColor,
                      function: function,
                    ),
                  )
                ],
              )),
        ));
  }
}
