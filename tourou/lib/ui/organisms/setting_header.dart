// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

class SettingHeader extends StatelessWidget {
  final String backText;
  final double? backFontSize;
  final Color? backTextColor;
  final void Function() function;

  final String titleText;
  final double? titleFontSize;
  final Color? titleTextColor;

  const SettingHeader(
      {Key? key,
      required this.backText,
      required this.function,
      required this.titleText,
      this.backFontSize,
      this.backTextColor,
      this.titleFontSize,
      this.titleTextColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      width: displayWidth,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: CustomText(
              text: backText,
              fontSize: backFontSize,
              color: backTextColor ?? ColorName.textButton,
              function: function,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: CustomText(
              text: titleText,
              fontSize: titleFontSize ?? titleTextFontSizeConstants,
              color: titleTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
