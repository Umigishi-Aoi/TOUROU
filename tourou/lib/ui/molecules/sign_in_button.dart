// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../atoms/custom_text.dart';

class SignInButton extends StatelessWidget {
  final SvgPicture icon;
  final String text;
  final Color textColor;
  final double fontSize;

  final double height;
  final double width;

  final Color buttonColor;

  final void Function() function;

  final double horizontalPadding;
  final double iconMargin;
  final double iconSize;

  const SignInButton({
    Key? key,
    required this.icon,
    required this.text,
    required this.textColor,
    required this.fontSize,
    required this.height,
    required this.width,
    required this.buttonColor,
    required this.function,
    required this.horizontalPadding,
    required this.iconMargin,
    required this.iconSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(height / 2),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding,
          ),
          child: Row(
            children: [
              SizedBox(
                height: iconSize,
                width: iconSize,
                child: icon,
              ),
              SizedBox(
                width: iconMargin,
              ),
              CustomText(
                text: text,
                color: textColor,
                fontSize: fontSize,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
