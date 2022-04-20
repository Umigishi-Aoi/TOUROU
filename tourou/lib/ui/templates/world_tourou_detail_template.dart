// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../../temp/toruou_data.dart';
import '../atoms/custom_text.dart';
import '../organisms/world_tourou_organism.dart';

class WorldTourouDetailTemplate extends StatelessWidget {
  const WorldTourouDetailTemplate({
    Key? key,
    required this.worldTourou,
    required this.reportFunction,
    required this.profileFunction,
    required this.goodButtonFunction,
    required this.tourouImageFunction,
    required this.backFunction,
  }) : super(key: key);

  final TourouData worldTourou;

  final void Function(TourouData tourouData) reportFunction;
  final void Function(TourouData tourouData) profileFunction;
  final void Function(TourouData tourouData) goodButtonFunction;
  final void Function(TourouData tourouData) tourouImageFunction;
  final void Function() backFunction;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorName.mainBlack,
        leading: Center(
          child: CustomText(
            text: AppLocalizations.of(context)!.back,
            color: ColorName.switchAccentColor,
            fontSize: newTourouFontSize,
            fontFamily: FontFamily.mplus1,
            function: backFunction,
          ),
        ),
        title: CustomText(
          text: AppLocalizations.of(context)!.detail,
          color: ColorName.textWhite,
          fontSize: howToUseTitleFontSize,
          fontFamily: FontFamily.mplus1,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: tourouHorizontalMargin / 2,
                  horizontal: tourouHorizontalMargin,
                ),
                child: WorldTourouOrganism(
                  tourouData: worldTourou,
                  worldTourouTapFunction: (tourouData) {},
                  tourouWidth: displayWidth * tourouWidthRatio,
                  tourouColor: ColorName.tourouBackground,
                  borderRadius: tourouBorderRadius,
                  verticalPadding: tourouVerticalPadding,
                  iconColor: ColorName.itemBackground,
                  errorIconSize: displayHeight * tourouReportIconSizeRatio,
                  reportFunction: reportFunction,
                  profileImageHeight:
                      displayHeight * tourouProfileImageHeightRatio,
                  profileFunction: profileFunction,
                  userNameFontSize: tourouUserNameFontSize,
                  tourouTextFontSize: tourouUserNameFontSize,
                  contentBottomPadding: tourouContentBottomPadding,
                  goodButtonText: AppLocalizations.of(context)!.good,
                  goodButtonFunction: goodButtonFunction,
                  textColor: ColorName.mainBlack,
                  userIdColor: ColorName.userIdText,
                  tourouContentWidth: displayWidth * tourouContentWidthRatio,
                  tourouImageHeight:
                      displayHeight * tourouProfileImageHeightRatio,
                  tourouImageFunction: tourouImageFunction,
                  goodButtonHeight: displayHeight * goodButtonHeightRatio,
                  goodButtonWidth: displayWidth * goodButtonWidthRatio,
                  buttonColor: ColorName.goodBackgoround,
                  buttonFontSize: displayHeight *
                      goodButtonHeightRatio *
                      buttonHeightFontSizeRatio,
                  goodNumberFontSize: displayHeight *
                      goodButtonHeightRatio *
                      buttonHeightFontSizeRatio,
                  goodNumberColor: ColorName.switchAccentColor,
                  fontFamily: FontFamily.mplus1,
                  goodButtonTextWidth: displayWidth * goodButtonTextWidthRatio,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
