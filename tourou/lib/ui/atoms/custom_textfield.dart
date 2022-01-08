// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;

  final TextEditingController controller;

  final double height;
  final double width;
  final int? minLines;
  final double? fontSize;
  final Color? textColor;
  final Color? fillColor;
  final Color borderColor;

  final List<TextInputFormatter>? textInputFormatters;

  const CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.height,
    required this.width,
    this.minLines,
    this.fontSize,
    this.textColor,
    this.fillColor,
    required this.borderColor,
    this.textInputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextField(
        inputFormatters: textInputFormatters,
        controller: controller,
        style: TextStyle(
          height: height,
          fontSize: fontSize,
          color: textColor,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          hintText: hint,
          fillColor: fillColor,
        ),
      ),
    );
  }
}
