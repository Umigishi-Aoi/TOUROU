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
import '../../temp/toruou_data.dart';
import '../atoms/custom_text.dart';
import '../organisms/tourou_organism.dart';

class ProfileTemplate extends StatelessWidget {
  final bool isTest;

  final TourouData tourouData;

  final void Function() backFunction;

  const ProfileTemplate({
    Key? key,
    required this.isTest,
    required this.tourouData,
    required this.backFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double bannerAdHeight = min(
        displayHeight * adaptiveBannerMaximumHeightRatio,
        adaptiveBannerMaximumHeight);
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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: displayWidth * tourouWidthRatio,
                margin: EdgeInsets.symmetric(
                    vertical: tourouHorizontalMargin / 2,
                    horizontal: tourouHorizontalMargin),
                decoration: BoxDecoration(
                  color: ColorName.tourouBackground,
                  borderRadius: BorderRadius.circular(tourouBorderRadius),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: tourouVerticalPadding,
                  ),
                  child: TourouOrganism(
                      tourouData: tourouData,
                      profileImageHeight:
                          displayHeight * profileImageHeightRatio,
                      profileFunction: (tourouData) {},
                      textColor: ColorName.mainBlack,
                      fontFamily: FontFamily.mplus1,
                      userIdColor: ColorName.userIdText,
                      userNameFontSize: tourouUserNameFontSize,
                      tourouTextWidth: displayWidth * tourouContentWidthRatio,
                      tourouTextFontSize: tourouUserNameFontSize,
                      contentBottomPadding: tourouContentBottomPadding,
                      tourouImageHeight: 0,
                      tourouImageFunction: (tourouData) {}),
                ),
              ),
              if (isTest)
                Container(
                  width: displayWidth,
                  height: bannerAdHeight,
                  color: ColorName.itemBackground,
                )
              else
                AdaptiveBannerAd(),
            ],
          ),
        ),
      ),
    );
  }
}
