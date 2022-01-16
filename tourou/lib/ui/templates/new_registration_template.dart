import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tourou/gen/assets.gen.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/atoms/custom_image.dart';
import 'package:tourou/ui/atoms/custom_text.dart';
import 'package:tourou/ui/molecules/text_text_button.dart';
import 'package:tourou/ui/organisms/sign_in_buttons_organism.dart';

class NewRegistrationTemplate extends StatelessWidget {
  final SvgPicture googleIcon;
  final SvgPicture appleIcon;
  final void Function() googleFunction;
  final void Function() appleFunction;
  final void Function() privacyPolicyFunction;
  final void Function() disclaimerFunction;
  final void Function() goBackToTitleFunction;

  const NewRegistrationTemplate({
    Key? key,
    required this.googleIcon,
    required this.appleIcon,
    required this.googleFunction,
    required this.appleFunction,
    required this.privacyPolicyFunction,
    required this.disclaimerFunction,
    required this.goBackToTitleFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double fontSize =
        displayHeight * buttonHeightRatio * buttonHeightFontSizeRatio;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomImage(
                path: Assets.images.enterIconTourou.path,
                height: displayHeight * logoHeightRatio,
                fit: BoxFit.contain,
              ),
              SignInButtonsOrganism(
                  googleIcon: googleIcon,
                  googleText: '',
                  textColor: ColorName.googleSignInButtonBlack,
                  fontSize: fontSize,
                  height: displayHeight * buttonHeightRatio,
                  width: displayWidth * buttonWidthRatio,
                  buttonColor: ColorName.signInButtonWhite,
                  googleFunction: googleFunction,
                  horizontalPadding: googleSignInButtonHorizontalPadding,
                  iconMargin: googleSignInButtonIconMargin,
                  iconSize: googleSignInButtonIconSize,
                  buttonMargin: displayHeight * signInButtonsMarginRatio,
                  appleIcon: appleIcon,
                  appleText: '',
                  appleFunction: appleFunction),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: '',
                    color: ColorName.textWhite,
                    fontSize: fontSize,
                    fontFamily: FontFamily.mplus1,
                  ),
                  SizedBox(
                    height: displayHeight * newRegistrationTextMarginRatio,
                  ),
                  TextTextButton(
                      firstText: '',
                      firstColor: ColorName.textWhite,
                      fontSize: fontSize,
                      fontFamily: FontFamily.mplus1,
                      secondText: '',
                      secondColor: ColorName.textButton,
                      function: disclaimerFunction),
                  SizedBox(
                    height: displayHeight * newRegistrationTextMarginRatio,
                  ),
                  TextTextButton(
                      firstText: '',
                      firstColor: ColorName.textWhite,
                      fontSize: fontSize,
                      fontFamily: FontFamily.mplus1,
                      secondText: '',
                      secondColor: ColorName.textButton,
                      function: privacyPolicyFunction),
                ],
              ),

              TextTextButton(
                  firstText: '',
                  firstColor: ColorName.textWhite,
                  fontSize: fontSize,
                  fontFamily: FontFamily.mplus1,
                  secondText: '',
                  secondColor: ColorName.textButton,
                  function: goBackToTitleFunction),
            ],
          ),
        ),
      ),
    );
  }
}
