// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';
import '../molecules/text_switch.dart';

class LanguageSettingTemplate extends StatelessWidget {
  const LanguageSettingTemplate({
    Key? key,
    required this.backFunction,
    required this.englishFunction,
    required this.japaneseFunction,
  }) : super(key: key);

  final void Function() backFunction;
  final void Function(bool?) englishFunction;
  final void Function(bool?) japaneseFunction;

  @override
  Widget build(BuildContext context) {
    final displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorName.mainBlack,
        title: CustomText(
          text: AppLocalizations.of(context)!.editProfile,
          color: ColorName.textWhite,
          fontSize: newTourouFontSize,
          fontFamily: FontFamily.mplus1,
        ),
        leading: Center(
          child: CustomText(
            text: AppLocalizations.of(context)!.back,
            color: ColorName.switchAccentColor,
            fontSize: newTourouFontSize,
            fontFamily: FontFamily.mplus1,
            function: backFunction,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextSwitch(
                width: displayWidth * languageSettingTextSwitchWidthRatio,
                text: AppLocalizations.of(context)!.english,
                color: ColorName.textWhite,
                fontSize: mainTextFontSize,
                fontFamily: FontFamily.mplus1,
                switchKey: const ValueKey('English Switch'),
                activeColor: ColorName.switchAccentColor,
                thumbColor: ColorName.textWhite,
                trackColor: ColorName.itemBackground,
                onChanged: englishFunction,
              ),
              TextSwitch(
                width: displayWidth * languageSettingTextSwitchWidthRatio,
                text: AppLocalizations.of(context)!.japanese,
                color: ColorName.textWhite,
                fontSize: mainTextFontSize,
                fontFamily: FontFamily.mplus1,
                switchKey: const ValueKey('Japanese Switch'),
                activeColor: ColorName.switchAccentColor,
                thumbColor: ColorName.textWhite,
                trackColor: ColorName.itemBackground,
                onChanged: japaneseFunction,
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
