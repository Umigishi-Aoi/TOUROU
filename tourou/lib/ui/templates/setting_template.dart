import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';

import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';

class SettingTemplate extends StatelessWidget {

  final void Function() editProfileFunction;

  const SettingTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double buttonHeight = displayHeight * buttonHeightRatio;
    final double buttonWidth = displayWidth * buttonWidthRatio;
    final double fontSize = buttonHeight * buttonHeightFontSizeRatio;
    final double marginHeight = displayHeight * settingMarginHeightRatio;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              SizedBox(height: marginHeight,),
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
              SizedBox(height: marginHeight,),
              CustomElevatedButton(
                text: AppLocalizations.of(context)!.setLanguage,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: buttonHeight,
                width: buttonWidth,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
              SizedBox(height: marginHeight,),
              CustomElevatedButton(
                text: AppLocalizations.of(context)!.howToUseTitle,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: buttonHeight,
                width: buttonWidth,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
              SizedBox(height: marginHeight,),
              CustomElevatedButton(
                text: AppLocalizations.of(context)!.disclaimer,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: buttonHeight,
                width: buttonWidth,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
              SizedBox(height: marginHeight,),
              CustomElevatedButton(
                text: AppLocalizations.of(context)!.privacyPolicy,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: buttonHeight,
                width: buttonWidth,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
              SizedBox(height: marginHeight,),
              CustomElevatedButton(
                text: AppLocalizations.of(context)!.logOut,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: buttonHeight,
                width: buttonWidth,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
              SizedBox(height: marginHeight,),
              CustomElevatedButton(
                text: AppLocalizations.of(context)!.deleteAccount,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: buttonHeight,
                width: buttonWidth,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
