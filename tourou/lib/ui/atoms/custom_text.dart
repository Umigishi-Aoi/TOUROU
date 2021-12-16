// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:tourou/gen/colors.gen.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {Key? key, required this.text, this.color, this.fontSize, this.bold})
      : super(key: key);

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? bold;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        text,
        style: TextStyle(
          color: color ?? ColorName.mainBlack,
          fontSize: fontSize ?? 16,
          fontWeight: bold ?? FontWeight.normal,
        ),
      ),
    );
  }
}
