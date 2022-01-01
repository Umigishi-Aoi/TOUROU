// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

class CustomGoogleSignInButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;

  final double height;
  final double width;

  final Color? buttonColor;

  final void Function()? function;

  final double? horizontalPadding;
  final double? iconMargin;
  final double? iconSize;
  final IconData? icon;

  const CustomGoogleSignInButton(
      {Key? key,
      required this.text,
      this.textColor,
      this.fontSize,
      required this.height,
      required this.width,
      this.buttonColor,
      this.function,
      this.horizontalPadding,
      this.iconMargin,
      this.iconSize,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = max(height, appleSignInButtonMinimumHeight);
    final double _width = max(width, appleSignInButtonMinimumWidth);
    return SizedBox(
      height: _height,
      width: _width,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          primary: buttonColor ?? ColorName.signInButtonWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_height / 2),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontalPadding ??
                max(googleSignInButtonHorizontalPadding,
                    _width * appleSignInButtonHorizonalPaddingRatio),
          ),
          child: Row(
            children: [
              Assets.signInIcons.appleLogo.svg(
                width: iconSize ?? _height,
                height: iconSize ?? _height,
              ),
              SizedBox(
                width: iconMargin ?? googleSignInButtonIconMargin,
              ),
              CustomText(
                text: text,
                color: textColor ?? ColorName.googleSignInButtonBlack,
                fontSize: fontSize ?? _height * buttonHeightTextRatio,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
