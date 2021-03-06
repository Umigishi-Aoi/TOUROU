// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/text_text_button.dart';
import '../organisms/sign_in_buttons_organism.dart';

class NewRegistrationTemplate extends StatelessWidget {
  const NewRegistrationTemplate({
    Key? key,
    required this.googleFunction,
    required this.appleFunction,
    required this.privacyPolicyFunction,
    required this.disclaimerFunction,
    required this.goBackToTitleFunction,
    required this.isTest,
  }) : super(key: key);

  final void Function() googleFunction;
  final void Function() appleFunction;
  final void Function() privacyPolicyFunction;
  final void Function() disclaimerFunction;
  final void Function() goBackToTitleFunction;

  final bool isTest;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    final fontSize =
        displayHeight * buttonHeightRatio * buttonHeightFontSizeRatio;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomImage(
                path: Assets.images.enterIconTourou.path,
                height: displayHeight * titleButtonHeightRatio,
                width: displayWidth * titleButtonWidthRatio,
                fit: BoxFit.contain,
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
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: newRegistrationExplanationHorizontalPadding,
                    ),
                    child: CustomText(
                      text: AppLocalizations.of(context)!.signUpExplanation,
                      color: ColorName.textWhite,
                      fontSize: fontSize,
                      fontFamily: FontFamily.mplus1,
                    ),
                  ),
                  SizedBox(
                    height: displayHeight * newRegistrationTextMarginRatio,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: newRegistrationItemHorizontalPadding,
                    ),
                    child: TextTextButton(
                      firstText: AppLocalizations.of(context)!.dot,
                      firstColor: ColorName.textWhite,
                      fontSize: fontSize,
                      fontFamily: FontFamily.mplus1,
                      secondText: AppLocalizations.of(context)!.disclaimer,
                      secondColor: ColorName.textButton,
                      function: disclaimerFunction,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    height: displayHeight * newRegistrationTextMarginRatio,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: newRegistrationItemHorizontalPadding,
                    ),
                    child: TextTextButton(
                      firstText: AppLocalizations.of(context)!.dot,
                      firstColor: ColorName.textWhite,
                      fontSize: fontSize,
                      fontFamily: FontFamily.mplus1,
                      secondText: AppLocalizations.of(context)!.privacyPolicy,
                      secondColor: ColorName.textButton,
                      function: privacyPolicyFunction,
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                  ),
                ],
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
  }
}
