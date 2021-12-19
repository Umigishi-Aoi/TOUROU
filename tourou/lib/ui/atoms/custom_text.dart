// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/res/constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? bold;
  final void Function()? function;

  CustomText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.bold,
      this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Text(
        text,
        style: TextStyle(
          color: color ?? ColorName.textWhite,
          fontSize: fontSize ?? mainTextSize,
          fontWeight: bold ?? FontWeight.normal,
        ),
      ),
      onTap: function,
    );
  }
}
