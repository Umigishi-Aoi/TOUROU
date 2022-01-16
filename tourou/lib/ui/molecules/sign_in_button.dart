// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../atoms/custom_text.dart';

class SignInButton extends StatelessWidget {
  final SvgGenImage icon;
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
    // final double _height = max(height, appleSignInButtonMinimumHeight);
    // final double _width = max(width, appleSignInButtonMinimumWidth);
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
            horizontal: horizontalPadding
            // ?? max(googleSignInButtonHorizontalPadding,
            //     _width * appleSignInButtonHorizonalPaddingRatio)
            ,
          ),
          child: Row(
            children: [
              Assets.signInIcons.appleLogo.svg(
                width: iconSize,
                height: iconSize,
              ),
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
                fontSize: fontSize
                // ?? _height * buttonHeightTextRatio
                ,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
