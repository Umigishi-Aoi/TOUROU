// Flutter imports:
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tourou/ui/molecules/custom_floating_action_button.dart';

// Project imports:
import '../../ads/adaptive_banner_ad.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../../temp/toruou_data.dart';
import '../atoms/tourou_tab_bar.dart';
import '../organisms/world_tourou_organism.dart';

class WorldTourouTemplate extends StatelessWidget {
  final bool isTest;

  final List<TourouData> newWorldTourous;
  final List<TourouData> trendWorldTourous;

  final void Function(TourouData tourouData) worldTourouTapFunction;
  final void Function(TourouData tourouData) reportFunction;
  final void Function(TourouData tourouData) profileFunction;
  final void Function(TourouData tourouData) goodButtonFunction;
  final void Function(TourouData tourouData) tourouImageFunction;
  final void Function() fabFunction;

  const WorldTourouTemplate({
    Key? key,
    required this.isTest,
    required this.newWorldTourous,
    required this.trendWorldTourous,
    required this.worldTourouTapFunction,
    required this.reportFunction,
    required this.profileFunction,
    required this.goodButtonFunction,
    required this.tourouImageFunction,
    required this.fabFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double bannerAdHeight = min(
        displayHeight * adaptiveBannerMaximumHeightRatio,
        adaptiveBannerMaximumHeight);

    return DefaultTabController(
      initialIndex: initialTabIndex,
      length: tabLength,
      child: Scaffold(
        backgroundColor: ColorName.mainBlack,
        appBar: AppBar(
            backgroundColor: ColorName.mainBlack,
            flexibleSpace: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TourouTabBar(
                  firstTabText: AppLocalizations.of(context)!.trendTourou,
                  secondTabText: AppLocalizations.of(context)!.newTourou,
                  labelColor: ColorName.textWhite,
                  unselectedLabelColor: ColorName.userIdText,
                  indicatorWeight: tabBarIndicatorWeight,
                  horizontalPadding: tabBarIndicatorHorizontalPadding,
                  verticalPadding: tabBarIndicatorVerticalPadding,
                ),
              ],
            )),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(itemBuilder: (context, index) {
                        TourouData worldTourou = newWorldTourous[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: tourouHorizontalMargin / 2,
                              horizontal: tourouHorizontalMargin),
                          child: WorldTourouOrganism(
                            tourouData: worldTourou,
                            worldTourouTapFunction: worldTourouTapFunction,
                            tourouWidth: displayWidth * tourouWidthRatio,
                            tourouColor: ColorName.tourouBackground,
                            borderRadius: tourouBorderRadius,
                            verticalPadding: tourouVerticalPadding,
                            iconColor: ColorName.itemBackground,
                            errorIconSize:
                                displayHeight * tourouReportIconSizeRatio,
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
                            tourouContentWidth:
                                displayWidth * tourouContentWidthRatio,
                            tourouImageHeight:
                                displayHeight * tourouProfileImageHeightRatio,
                            tourouImageFunction: tourouImageFunction,
                            goodButtonHeight:
                                displayHeight * goodButtonHeightRatio,
                            goodButtonWidth:
                                displayWidth * goodButtonWidthRatio,
                            buttonColor: ColorName.goodBackgoround,
                            buttonFontSize: displayHeight *
                                goodButtonHeightRatio *
                                buttonHeightFontSizeRatio,
                            goodNumberFontSize: displayHeight *
                                goodButtonHeightRatio *
                                buttonHeightFontSizeRatio,
                            goodNumberColor: ColorName.switchAccentColor,
                            fontFamily: FontFamily.mplus1,
                            goodButtonTextWidth:
                                displayWidth * goodButtonTextWidthRatio,
                          ),
                        );
                      }),
                      ListView.builder(itemBuilder: (context, index) {
                        TourouData worldTourou = trendWorldTourous[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: tourouHorizontalMargin / 2,
                              horizontal: tourouHorizontalMargin),
                          child: WorldTourouOrganism(
                            tourouData: worldTourou,
                            worldTourouTapFunction: worldTourouTapFunction,
                            tourouWidth: displayWidth * tourouContentWidthRatio,
                            tourouColor: ColorName.tourouBackground,
                            borderRadius: tourouBorderRadius,
                            iconColor: ColorName.itemBackground,
                            verticalPadding: tourouVerticalPadding,
                            errorIconSize:
                                displayHeight * tourouReportIconSizeRatio,
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
                            tourouContentWidth:
                                displayWidth * tourouContentWidthRatio,
                            tourouImageHeight:
                                displayHeight * tourouProfileImageHeightRatio,
                            tourouImageFunction: tourouImageFunction,
                            goodButtonHeight:
                                displayHeight * goodButtonHeightRatio,
                            goodButtonWidth:
                                displayWidth * goodButtonWidthRatio,
                            buttonColor: ColorName.goodBackgoround,
                            buttonFontSize: displayHeight *
                                goodButtonHeightRatio *
                                buttonHeightFontSizeRatio,
                            goodNumberFontSize: displayHeight *
                                goodButtonHeightRatio *
                                buttonHeightFontSizeRatio,
                            goodNumberColor: ColorName.switchAccentColor,
                            fontFamily: FontFamily.mplus1,
                            goodButtonTextWidth:
                                displayWidth * goodButtonTextWidthRatio,
                          ),
                        );
                      }),
                    ],
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
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: bannerAdHeight + fabHeightMargin),
          child: CustomFloatingActionButton(
              fabColor: ColorName.fABBackgoround,
              fabFunction: fabFunction,
              iconColor: ColorName.textWhite),
        ),
      ),
    );
  }
}
