import 'package:flutter/material.dart';
import 'package:tourou/gen/assets.gen.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/molecules/text_text_button.dart';
import 'package:tourou/ui/organisms/sign_in_buttons_organism.dart';

class SignInTemplate extends StatelessWidget {
  final void Function() googleFunction;
  final void Function() appleFunction;
  final void Function() goBackToTitleFunction;

  final bool isTest;

  const SignInTemplate(
      {Key? key,
      required this.googleFunction,
      required this.appleFunction,
      required this.goBackToTitleFunction,
      required this.isTest})
      : super(key: key);

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
              SizedBox(
                height: displayHeight * titleButtonHeightRatio,
              ),
              if (isTest)
                SignInButtonsOrganism(
                  googleIcon: Assets.signInIconsForTest.googleTest.svg(),
                  googleText: AppLocalizations.of(context)!.signUpWithGoogle,
                  textColor: ColorName.signInButtonBlack,
                  fontSize: fontSize,
                  height: displayHeight * buttonHeightRatio,
                  width: displayWidth * buttonWidthRatio,
                  buttonColor: ColorName.signInButtonWhite,
                  googleFunction: googleFunction,
                  horizontalPadding: googleSignInButtonHorizontalPadding,
                  iconMargin: googleSignInButtonIconMargin,
                  iconSize: googleSignInButtonIconSize,
                  buttonMargin: displayHeight * signInButtonsMarginRatio,
                  appleIcon: Assets.signInIconsForTest.appleTest.svg(),
                  appleText: AppLocalizations.of(context)!.signUpWithApple,
                  appleFunction: appleFunction,
                  fontFamilyInApple: FontFamily.mplus1,
                  fontFamilyInGoogle: FontFamily.mplus1,
                )
              else
                SignInButtonsOrganism(
                  googleIcon: Assets.signInIcons.googleLogo.svg(),
                  googleText: AppLocalizations.of(context)!.signUpWithGoogle,
                  textColor: ColorName.signInButtonBlack,
                  fontSize: fontSize,
                  height: displayHeight * buttonHeightRatio,
                  width: displayWidth * buttonWidthRatio,
                  buttonColor: ColorName.signInButtonWhite,
                  googleFunction: googleFunction,
                  horizontalPadding: googleSignInButtonHorizontalPadding,
                  iconMargin: googleSignInButtonIconMargin,
                  iconSize: googleSignInButtonIconSize,
                  buttonMargin: displayHeight * signInButtonsMarginRatio,
                  appleIcon: Assets.signInIcons.appleLogo.svg(),
                  appleText: AppLocalizations.of(context)!.signUpWithApple,
                  appleFunction: appleFunction,
                  fontFamilyInApple: FontFamily.mplus1,
                ),
              SizedBox(
                height: displayHeight * titleButtonHeightRatio,
              ),
              TextTextButton(
                firstText: AppLocalizations.of(context)!.goBackTo,
                firstColor: ColorName.textWhite,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                secondText: AppLocalizations.of(context)!.title,
                secondColor: ColorName.textButton,
                function: goBackToTitleFunction,
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
