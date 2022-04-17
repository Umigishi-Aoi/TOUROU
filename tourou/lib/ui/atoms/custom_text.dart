// Flutter imports:
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    this.bold,
    this.function,
    this.textAlign,
    this.fontFamily,
  }) : super(key: key);

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? bold;
  final TextAlign? textAlign;
  final String? fontFamily;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: bold,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}
