// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

// Project imports:
import '../molecules/sign_in_button.dart';

class SignInButtonsOrganism extends StatelessWidget {
  const SignInButtonsOrganism({
    Key? key,
    required this.googleIcon,
    required this.googleText,
    required this.textColor,
    required this.fontSize,
    required this.height,
    required this.width,
    required this.buttonColor,
    required this.googleFunction,
    required this.horizontalPadding,
    required this.iconMargin,
    required this.iconSize,
    required this.buttonMargin,
    required this.appleIcon,
    required this.appleText,
    required this.appleFunction,
    required this.fontFamilyInApple,
    this.fontFamilyInGoogle,
  }) : super(key: key);

  final SvgPicture googleIcon;
  final String googleText;
  final Color textColor;
  final double fontSize;
  final double height;
  final double width;
  final Color buttonColor;
  final void Function() googleFunction;
  final double horizontalPadding;
  final double iconMargin;
  final double iconSize;

  final double buttonMargin;

  final SvgPicture appleIcon;
  final String appleText;
  final void Function() appleFunction;
  final String fontFamilyInApple;
  final String? fontFamilyInGoogle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SignInButton(
          icon: googleIcon,
          text: googleText,
          textColor: textColor,
          fontSize: fontSize,
          height: height,
          width: width,
          buttonColor: buttonColor,
          function: googleFunction,
          horizontalPadding: horizontalPadding,
          iconMargin: iconMargin,
          iconSize: iconSize,
          fontFamily: fontFamilyInGoogle,
        ),
        if (Theme.of(context).platform == TargetPlatform.iOS)
          Column(
            children: [
              SizedBox(
                height: buttonMargin,
              ),
              SignInButton(
                icon: appleIcon,
                text: appleText,
                textColor: textColor,
                fontSize: fontSize,
                height: height,
                width: width,
                buttonColor: buttonColor,
                function: appleFunction,
                horizontalPadding: horizontalPadding,
                iconMargin: iconMargin,
                iconSize: iconSize,
                fontFamily: fontFamilyInApple,
              ),
            ],
          ),
      ],
    );
  }
}
