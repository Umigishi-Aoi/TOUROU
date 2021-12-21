// Flutter imports:
import 'package:flutter/material.dart';
import 'package:tourou/gen/fonts.gen.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? bold;
  final TextAlign? textAlign;
  final void Function()? function;

  CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.bold,
      this.function,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.start,
        style: TextStyle(
          color: color ?? ColorName.textWhite,
          fontSize: fontSize ?? mainTextFontSize,
          fontWeight: bold ?? FontWeight.normal,
          fontFamily: FontFamily.mplus1
        ),
      ),
      onTap: function,
    );
  }
}
