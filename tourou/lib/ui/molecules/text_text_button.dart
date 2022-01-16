// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';

class TextTextButton extends StatelessWidget {
  final String firstText;
  final Color firstColor;
  final double fontSize;
  final FontWeight? firstBold;
  final String fontFamily;

  final String secondText;
  final Color secondColor;
  final FontWeight? secondBold;
  final void Function() function;

  final MainAxisAlignment mainAxisAlignment;

  const TextTextButton({
    Key? key,
    required this.firstText,
    required this.firstColor,
    required this.fontSize,
    this.firstBold,
    required this.fontFamily,
    required this.secondText,
    required this.secondColor,
    this.secondBold,
    required this.function,
    required this.mainAxisAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        CustomText(
          text: firstText,
          color: firstColor,
          fontSize: fontSize,
          bold: firstBold,
          fontFamily: fontFamily,
        ),
        CustomText(
          text: secondText,
          color: secondColor,
          fontSize: fontSize,
          bold: secondBold,
          fontFamily: fontFamily,
        )
      ],
    );
  }
}
