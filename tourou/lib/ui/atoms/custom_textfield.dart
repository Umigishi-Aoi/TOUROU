// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.height,
    required this.width,
    this.fontSize,
    this.textColor,
    this.fillColor,
    this.borderColor,
    this.textInputFormatters,
  }) : super(key: key);

  final String hint;

  final TextEditingController controller;

  final double height;
  final double width;
  final double? fontSize;
  final Color? textColor;
  final Color? fillColor;
  final Color? borderColor;

  final List<TextInputFormatter>? textInputFormatters;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        inputFormatters: textInputFormatters,
        controller: controller,
        style: TextStyle(
          height: height,
          fontSize: fontSize ?? mainTextSize,
          color: textColor ?? ColorName.mainBlack,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? ColorName.textWhite,
            ),
          ),
          hintText: hint,
          fillColor: fillColor ?? ColorName.itemBackground,
        ),
      ),
    );
  }
}
