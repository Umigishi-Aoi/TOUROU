// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';

class ExplanationOrganism extends StatelessWidget {
  const ExplanationOrganism({
    Key? key,
    required this.titleHeight,
    required this.titleText,
    required this.textColor,
    required this.titleFontSize,
    required this.titleBold,
    required this.fontFamily,
    required this.explanationTextHeight,
    required this.explanationTextWidth,
    required this.explanationText,
    required this.explanationFontSize,
    required this.buttonHeight,
    required this.buttonText,
    required this.textButtonColor,
    required this.textButtonFontSize,
    required this.function,
  }) : super(key: key);

  final double titleHeight;
  final String titleText;
  final Color textColor;
  final double titleFontSize;
  final FontWeight titleBold;
  final String fontFamily;

  final double explanationTextHeight;
  final double explanationTextWidth;
  final String explanationText;
  final double explanationFontSize;

  final double buttonHeight;
  final String buttonText;
  final Color textButtonColor;
  final double textButtonFontSize;
  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: titleHeight,
          alignment: Alignment.center,
          child: CustomText(
            text: titleText,
            color: textColor,
            fontSize: titleFontSize,
            bold: titleBold,
            fontFamily: fontFamily,
          ),
        ),
        Container(
          height: explanationTextHeight,
          width: explanationTextWidth,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: CustomText(
              text: explanationText,
              color: textColor,
              fontSize: explanationFontSize,
              fontFamily: fontFamily,
            ),
          ),
        ),
        Container(
          height: buttonHeight,
          alignment: Alignment.center,
          child: CustomText(
            text: buttonText,
            color: textButtonColor,
            fontSize: textButtonFontSize,
            fontFamily: fontFamily,
            function: function,
          ),
        ),
      ],
    );
  }
}
