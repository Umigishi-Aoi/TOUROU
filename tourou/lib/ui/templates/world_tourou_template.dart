import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
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
                      return WorldTourouOrganism(
                          tourouWidth: tourouWidth,
                          iconColor: iconColor,
                          profileImagePath: newWorldTourous[index]
                              .profileImagePath,
                          profileImageFit: profileImageFit,
                          userName: newWorldTourous[index].userName,
                          userNameFontSize: userNameFontSize,
                          userId: newWorldTourous[index].userId,
                          tourouText: newWorldTourous[index].tourouText,
                          tourouTextFontSize: tourouTextFontSize,
                          reportFunction: reportFunction,
                          goodButtonText: goodButtonText,
                          goodButtonFunction: goodButtonFunction,
                          goodNumber: newWorldTourous[index].goodNumber,
                          profileImageHeight: profileImageHeight,
                          textColor: textColor,
                          userIdColor: userIdColor,
                          tourouContentWidth: tourouContentWidth,
                          tourouImagePath: newWorldTourous[index]
                              .tourouImagePath,
                          tourouImageHeight: tourouImageHeight,
                          tourouImgageFit: tourouImgageFit,
                          goodButtonHeight: goodButtonHeight,
                          goodButtonWidth: goodButtonWidth,
                          goodButtonActiveColor: goodButtonActiveColor,
                          goodButtonInactiveColor: goodButtonInactiveColor,
                          buttonColor: buttonColor,
                          buttonFontSize: buttonFontSize,
                          function: function,
                          goodNumberFontSize: goodNumberFontSize,
                          goodNumberColor: goodNumberColor,
                          errorIconSize: errorIconSize,
                          fontFamily: fontFamily,
                          goodButtonMargin: goodButtonMargin)
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
