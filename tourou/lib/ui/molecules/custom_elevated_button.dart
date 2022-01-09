// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final String? fontFamily;

  final double height;
  final double width;

  final Color? buttonColor;

  final void Function()? function;

  const CustomElevatedButton({
    Key? key,
    required this.text,
    this.color,
    this.fontSize,
    this.fontFamily,
    required this.height,
    required this.width,
    this.buttonColor,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        child: CustomText(
          text: text,
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
      ),
    );
  }
}
