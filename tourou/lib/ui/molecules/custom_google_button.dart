// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../atoms/custom_text.dart';

class CustomGoogleSignInButton extends StatelessWidget {
  final String text;
  final Color? textColor;
  final double? fontSize;

  final double height;
  final double width;

  final Color? buttonColor;

  final void Function()? function;

  final double horizontalPadding;
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
      required this.horizontalPadding,
      this.iconMargin,
      this.iconSize,
      this.icon})
      : super(key: key);

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
              Assets.signInIcons.googleLogo.svg(
                width: iconSize,
                height: iconSize,
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
