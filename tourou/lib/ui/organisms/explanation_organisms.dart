// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

class ExplanationOrganisms extends StatelessWidget {
  final double? titleHeight;
  final String titleText;
  final Color? textColor;
  final double? titleFontSize;
  final FontWeight? titleBold;

  final double? explanationTextHeight;
  final double? explanationTextWidth;
  final String explanationText;
  final double? explanationFontSize;

  final double? buttonHeight;
  final String buttonText;
  final Color? textButtonColor;
  final double? textButtonFontSize;
  final void Function() function;

  const ExplanationOrganisms(
      {Key? key,
      this.titleHeight,
      required this.titleText,
      this.textColor,
      this.titleFontSize,
      this.titleBold,
      this.explanationTextHeight,
      this.explanationTextWidth,
      required this.explanationText,
      this.explanationFontSize,
      this.buttonHeight,
      required this.buttonText,
      this.textButtonColor,
      this.textButtonFontSize,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: titleHeight ?? deviceHeight * explanationTitleHeightRatio,
          alignment: Alignment.center,
          child: CustomText(
            text: titleText,
            color: textColor,
            fontSize: titleFontSize ?? titleTextFontSizeConstants,
            bold: titleBold ?? FontWeight.bold,
          ),
        ),
        Container(
          height: explanationTextHeight ??
              deviceHeight * explanationTextHeightRatio,
          width:
              explanationTextWidth ?? deviceWidth * explanationTextWidthRatio,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: CustomText(
              text: explanationText,
              color: textColor,
              fontSize: explanationFontSize,
            ),
          ),
        ),
        Container(
          height:
              buttonHeight ?? deviceHeight * explanationTextButtonHeightRatio,
          alignment: Alignment.center,
          child: CustomText(
            text: buttonText,
            color: textButtonColor ?? ColorName.textButton,
            fontSize: textButtonFontSize,
            function: function,
          ),
        ),
      ],
    );
  }
}
