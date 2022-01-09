// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';

class TextTextButton extends StatelessWidget {
  final String firstText;
  final Color? firstColor;
  final double? fontSize;
  final FontWeight? firstBold;
  final String? fontFamily;

  final String secondText;
  final Color? secondColor;
  final FontWeight? secondBold;
  final void Function()? function;

  const TextTextButton({
    Key? key,
    required this.firstText,
    this.firstColor,
    this.fontSize,
    this.firstBold,
    this.fontFamily,
    required this.secondText,
    this.secondColor,
    this.secondBold,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
          text: firstText,
          color: firstColor,
          fontSize: fontSize,
          bold: firstBold,
        ),
        CustomText(
          text: secondText,
          color: secondColor,
          fontSize: fontSize,
          bold: secondBold,
        )
      ],
    );
  }
}
