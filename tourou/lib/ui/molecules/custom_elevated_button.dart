import 'package:flutter/material.dart';
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      required this.height,
      required this.width,
      this.buttonColor,
      this.function})
      : super(key: key);

  final String text;
  final Color? color;
  final double? fontSize;

  final double height;
  final double width;

  final Color? buttonColor;

  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        child: CustomText(
          text: text,
          color: color ?? ColorName.mainBlack,
          fontSize: fontSize ?? height * buttonHeightTextRatio,
        ),
        style: ElevatedButton.styleFrom(
          primary: buttonColor ?? ColorName.itemBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
      ),
    );
  }
}
