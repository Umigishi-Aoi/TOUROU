// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../atoms/custom_text.dart';
import '../atoms/custom_textfield.dart';

class TextTextField extends StatelessWidget {
  final String text;
  final Color titleTextColor;
  final double titleFontSize;
  final String fontFamily;

  final String hint;
  final TextEditingController controller;
  final double height;
  final double width;
  final int? maxLines;
  final double fieldFontSize;
  final Color fieldTextColor;
  final Color fillColor;
  final Color borderColor;
  final List<TextInputFormatter> textInputFormatters;

  const TextTextField({
    Key? key,
    required this.text,
    required this.titleTextColor,
    required this.titleFontSize,
    required this.fontFamily,
    required this.hint,
    required this.controller,
    required this.height,
    required this.width,
    required this.maxLines,
    required this.fieldFontSize,
    required this.fieldTextColor,
    required this.fillColor,
    required this.borderColor,
    required this.textInputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(
          text: text,
          color: titleTextColor,
          fontSize: titleFontSize,
          fontFamily: fontFamily,
        ),
        CustomTextField(
          hint: hint,
          controller: controller,
          height: height,
          width: width,
          maxLines: maxLines,
          fontSize: fieldFontSize,
          textColor: fieldTextColor,
          fontFamily: fontFamily,
          fillColor: fillColor,
          borderColor: borderColor,
          textInputFormatters: textInputFormatters,
        )
      ],
    );
  }
}
