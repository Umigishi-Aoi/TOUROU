import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/temp/toruou_data.dart';
import 'package:tourou/ui/atoms/tourou_tab_bar.dart';
import 'package:tourou/ui/organisms/self_tourou_organism.dart';
import '../../ads/adaptive_banner_ad.dart';
import '../../l10n/app_localizations.dart';

class SelfTourouTemplate extends StatelessWidget {
  final bool isTest;

  final List<TourouData> newSelfTourous;
  final List<TourouData> trendSelfTourous;

  final void Function(TourouData tourouData) selfTourouTapFunction;
  final void Function(TourouData tourouData) profileFunction;
  final void Function(TourouData tourouData) tourouImageFunction;

  const SelfTourouTemplate(
      {Key? key,
      required this.isTest,
      required this.newSelfTourous,
      required this.trendSelfTourous,
      required this.selfTourouTapFunction,
      required this.profileFunction,
      required this.tourouImageFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
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
                        TourouData selfTourou = newSelfTourous[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: tourouHorizontalMargin / 2,
                              horizontal: tourouHorizontalMargin),
                          child: SelfTourouOrganism(
                            tourouData: selfTourou,
                            selfTourouTapFunction: selfTourouTapFunction,
                            tourouWidth: displayWidth * tourouWidthRatio,
                            tourouColor: ColorName.tourouBackground,
                            borderRadius: tourouBorderRadius,
                            verticalPadding: tourouVerticalPadding,
                            profileImageHeight:
                                displayHeight * tourouProfileImageHeightRatio,
                            profileFunction: profileFunction,
                            userNameFontSize: tourouUserNameFontSize,
                            tourouTextFontSize: tourouUserNameFontSize,
                            contentBottomPadding: tourouContentBottomPadding,
                            textColor: ColorName.mainBlack,
                            userIdColor: ColorName.userIdText,
                            tourouContentWidth:
                                displayWidth * tourouContentWidthRatio,
                            tourouImageHeight:
                                displayHeight * tourouProfileImageHeightRatio,
                            tourouImageFunction: tourouImageFunction,
                            goodNumberFontSize: displayHeight *
                                goodButtonHeightRatio *
                                buttonHeightFontSizeRatio,
                            goodNumberColor: ColorName.switchAccentColor,
                            fontFamily: FontFamily.mplus1,
                            goodPadding: selfTourouGoodPadding,
                          ),
                        );
                      }),
                      ListView.builder(itemBuilder: (context, index) {
                        TourouData selfTourou = trendSelfTourous[index];
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: tourouHorizontalMargin / 2,
                              horizontal: tourouHorizontalMargin),
                          child: SelfTourouOrganism(
                            tourouData: selfTourou,
                            selfTourouTapFunction: selfTourouTapFunction,
                            tourouWidth: displayWidth * tourouWidthRatio,
                            tourouColor: ColorName.tourouBackground,
                            borderRadius: tourouBorderRadius,
                            verticalPadding: tourouVerticalPadding,
                            profileImageHeight:
                                displayHeight * tourouProfileImageHeightRatio,
                            profileFunction: profileFunction,
                            userNameFontSize: tourouUserNameFontSize,
                            tourouTextFontSize: tourouUserNameFontSize,
                            contentBottomPadding: tourouContentBottomPadding,
                            textColor: ColorName.mainBlack,
                            userIdColor: ColorName.userIdText,
                            tourouContentWidth:
                                displayWidth * tourouContentWidthRatio,
                            tourouImageHeight:
                                displayHeight * tourouProfileImageHeightRatio,
                            tourouImageFunction: tourouImageFunction,
                            goodNumberFontSize: displayHeight *
                                goodButtonHeightRatio *
                                buttonHeightFontSizeRatio,
                            goodNumberColor: ColorName.switchAccentColor,
                            fontFamily: FontFamily.mplus1,
                            goodPadding: selfTourouGoodPadding,
                          ),
                        );
                      }),
                    ],
                  ),
                ),
                if (isTest)
                  Container(
                    width: displayWidth,
                    height: 50,
                    color: ColorName.itemBackground,
                  )
                else
                  AdaptiveBannerAd(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
