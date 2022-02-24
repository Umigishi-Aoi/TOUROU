// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String hint;

  final TextEditingController controller;

  final double height;
  final double width;
  final int? maxLines;
  final int maxLength;
  final double fontSize;
  final Color textColor;
  final String fontFamily;
  final Color fillColor;
  final Color borderColor;
  final bool autofocus;

  final List<TextInputFormatter> textInputFormatters;

  const CustomTextField({
    Key? key,
    required this.hint,
    required this.controller,
    required this.height,
    required this.width,
    required this.maxLines,
    required this.maxLength,
    required this.fontSize,
    required this.textColor,
    required this.fontFamily,
    required this.fillColor,
    required this.borderColor,
    required this.textInputFormatters,
    required this.autofocus
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextField(
        inputFormatters: textInputFormatters,
        controller: controller,
        maxLines: maxLines,
        maxLength: maxLength,
        maxLengthEnforcement: MaxLengthEnforcement.none ,
        style: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontFamily: fontFamily,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor,
            ),
          ),
          hintText: hint,
          fillColor: fillColor,
          filled: true,
        ),
        autofocus: autofocus,
      ),
    );
  }
}
