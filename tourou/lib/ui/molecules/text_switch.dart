// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_switch.dart';
import '../atoms/custom_text.dart';

class TextSwitch extends StatelessWidget {
  final double width;

  final String text;
  final Color color;
  final double fontSize;
  final FontWeight? bold;
  final String fontFamily;

  final void Function()? function;

  final Key? switchKey;
  final Color activeColor;
  final Color thumbColor;
  final Color trackColor;
  final void Function(bool?) onChanged;

  const TextSwitch({
    Key? key,
    required this.width,
    required this.text,
    required this.color,
    required this.fontSize,
    this.bold,
    required this.fontFamily,
    this.function,
    this.switchKey,
    required this.activeColor,
    required this.thumbColor,
    required this.trackColor,
    required this.onChanged,
  }) : super(key: key);

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
            fontFamily: fontFamily,
          ),
          CustomSwitch(
            key: switchKey,
            onChanged: onChanged,
            activeColor: activeColor,
            thumbColor: thumbColor,
            trackColor: trackColor,
          ),
        ],
      ),
    );
  }
}
