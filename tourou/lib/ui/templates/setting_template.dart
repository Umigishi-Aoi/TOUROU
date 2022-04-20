// Dart imports:
import 'dart:math';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../ads/adaptive_banner_ad.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../molecules/custom_elevated_button.dart';

class SettingTemplate extends StatelessWidget {
  const SettingTemplate({
    Key? key,
    required this.editProfileFunction,
    required this.setLanguageFunction,
    required this.howToUseFunction,
    required this.disclaimerFunction,
    required this.privacyPolicyFunction,
    required this.logOutFunction,
    required this.deleteAccountFunction,
    required this.isTest,
  }) : super(key: key);

  final void Function() editProfileFunction;
  final void Function() setLanguageFunction;
  final void Function() howToUseFunction;
  final void Function() disclaimerFunction;
  final void Function() privacyPolicyFunction;
  final void Function() logOutFunction;
  final void Function() deleteAccountFunction;
  final bool isTest;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    final buttonHeight = displayHeight * buttonHeightRatio;
    final buttonWidth = displayWidth * buttonWidthRatio;
    final fontSize = buttonHeight * buttonHeightFontSizeRatio;
    final marginHeight = displayHeight * settingMarginHeightRatio;
    final double bannerAdHeight = min(
      displayHeight * adaptiveBannerMaximumHeightRatio,
      adaptiveBannerMaximumHeight,
    );
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(settingButtonPadding),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.editProfile,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: editProfileFunction,
                      ),
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.setLanguage,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: setLanguageFunction,
                      ),
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.howToUseTitle,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: howToUseFunction,
                      ),
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.disclaimer,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: disclaimerFunction,
                      ),
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.privacyPolicy,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: privacyPolicyFunction,
                      ),
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.logOut,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: logOutFunction,
                      ),
                      SizedBox(
                        height: marginHeight,
                      ),
                      CustomElevatedButton(
                        text: AppLocalizations.of(context)!.deleteAccount,
                        color: ColorName.mainBlack,
                        fontSize: fontSize,
                        fontFamily: FontFamily.mplus1,
                        height: buttonHeight,
                        width: buttonWidth,
                        buttonColor: ColorName.tourouBackground,
                        function: deleteAccountFunction,
                      ),
                    ],
                  ),
                ),
              ),
              if (isTest)
                Container(
                  width: displayWidth,
                  height: bannerAdHeight,
                  color: ColorName.itemBackground,
                )
              else
                const AdaptiveBannerAd(),
            ],
          ),
        ),
      ),
    );
  }
}
