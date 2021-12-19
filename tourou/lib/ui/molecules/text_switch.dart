// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_switch.dart';
import '../atoms/custom_text.dart';

class TextSwitch extends StatelessWidget {
  final double width;

  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? bold;
  final void Function()? function;

  final Color? activeColor;
  final Color? inactiveColor;
  final void Function(bool?)? onChanged;

  const TextSwitch(
      {Key? key,
      required this.width,
      required this.text,
      this.color,
      this.fontSize,
      this.bold,
      this.function,
      this.activeColor,
      this.inactiveColor,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: text,
            color: color,
            fontSize: fontSize,
            bold: bold,
          ),
          CustomSwitch(
            onChanged: onChanged,
            activeColor: activeColor,
            inactiveColor: inactiveColor,
          ),
        ],
      ),
    );
  }
}
