import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/temp/world_tourou.dart';
import 'package:tourou/ui/atoms/tourou_tab_bar.dart';
import 'package:tourou/ui/organisms/world_tourou_organism.dart';

import '../../ads/adaptive_banner_ad.dart';

class WorldTourouTemplate extends StatelessWidget {
  final bool isTest;

  final List<WorldTourou> newWorldTourous;
  final List<WorldTourou> trendWorldTourous;

  const WorldTourouTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery
        .of(context)
        .size
        .height;
    final double displayWidth = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TourouTabBar(
                firstTabText: firstTabText,
                secondTabText: secondTabText,
                controller: controller,
                labelColor: labelColor,
                unselectedLabelColor: unselectedLabelColor,
                indicatorWeight: indicatorWeight,
                horizontalPadding: horizontalPadding,
                verticalPadding: verticalPadding,),
              Expanded(
                child: TabBarView(
                  children: [
                    ListView.builder(itemBuilder: (context, index) {
                      WorldTourou worldTourou = newWorldTourous[index];
                      return WorldTourouOrganism(
                          tourouWidth: displayWidth * tourouContentWidthRatio,
                          iconColor: ColorName.itemBackground,
                          errorIconSize: displayHeight * tourouReportIconSizeRatio,
                          profileImagePath: worldTourou
                              .profileImagePath,
                          profileImageHeight: displayHeight *
                              tourouProfileImageHeightRatio,
                          profileImageFit: BoxFit.cover,
                          userName: worldTourou.userName,
                          userNameFontSize: tourouUserNameFontSize,
                          userId: worldTourou.userId,
                          tourouText: worldTourou.tourouText,
                          tourouTextFontSize: tourouUserNameFontSize,
                          reportFunction: reportFunction,
                          goodButtonText: goodButtonText,
                          goodButtonFunction: goodButtonFunction,
                          goodNumber: worldTourou.goodNumber,
                          textColor: ColorName.mainBlack,
                          userIdColor: ColorName.userIdText,
                          tourouContentWidth: displayWidth *
                              tourouContentWidthRatio,
                          tourouImagePath: worldTourou
                              .tourouImagePath,
                          tourouImageHeight: displayHeight *
                              tourouProfileImageHeightRatio,
                          tourouImgageFit: BoxFit.contain,
                          goodButtonHeight: displayHeight * goodButtonHeightRatio,
                          goodButtonWidth: displayWidth * goodButtonWidthRatio,
                          buttonColor: ColorName.goodBackgoround,
                          buttonFontSize: displayHeight * goodButtonHeightRatio * buttonHeightFontSizeRatio,
                          goodNumberFontSize: displayHeight * goodButtonHeightRatio * buttonHeightFontSizeRatio,
                          goodNumberColor: ColorName.switchAccentColor,

                          fontFamily: FontFamily.mplus1,
                          goodButtonMargin: displayWidth * goodButtonMarginRatio)
                    }),
                  ],
                ),
              ),
              if(isTest)
                Container(width: displayWidth,
                  height: 50,
                  color: ColorName.itemBackground,)
              else
                AdaptiveBannerAd(),
            ],
          ),
        ),
      ),
    )
  }
}
