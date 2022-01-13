// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';

class SettingHeader extends StatelessWidget {
  final double width;
  final String backText;
  final double backFontSize;
  final Color backTextColor;
  final String fontFamily;
  final void Function() function;

  final String titleText;
  final double titleFontSize;
  final FontWeight titleBold;
  final Color titleTextColor;

  const SettingHeader({
    Key? key,
    required this.width,
    required this.backText,
    required this.function,
    required this.titleText,
    required this.backFontSize,
    required this.backTextColor,
    required this.fontFamily,
    required this.titleFontSize,
    required this.titleBold,
    required this.titleTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: backText,
              fontSize: backFontSize,
              color: backTextColor,
              fontFamily: fontFamily,
              function: function,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: titleText,
              fontSize: titleFontSize,
              fontFamily: fontFamily,
              bold: titleBold,
              color: titleTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
