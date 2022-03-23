import 'dart:math';

import 'package:flutter/material.dart';

import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/temp/toruou_data.dart';
import 'package:tourou/ui/organisms/tourou_organism.dart';

import '../../ads/adaptive_banner_ad.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

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
                color: ColorName.tourouBackground,
                child: TourouOrganism(
                    tourouData: tourouData,
                    profileImageHeight:
                        displayHeight * tourouProfileImageHeightRatio,
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
