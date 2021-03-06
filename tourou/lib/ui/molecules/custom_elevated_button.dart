// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontFamily,
    required this.height,
    required this.width,
    required this.buttonColor,
    required this.function,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final String fontFamily;

  final double height;
  final double width;

  final Color buttonColor;

  final void Function() function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
        child: CustomText(
          text: text,
          color: color,
          fontSize: fontSize,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
