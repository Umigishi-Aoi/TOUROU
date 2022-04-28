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
import '../atoms/tourou_tab_bar.dart';
import '../molecules/custom_floating_action_button.dart';
import '../organisms/self_tourou_organism.dart';

class SelfTourouTemplate extends StatelessWidget {
  const SelfTourouTemplate({
    Key? key,
    required this.isTest,
    required this.newSelfTourous,
    required this.trendSelfTourous,
    required this.selfTourouTapFunction,
    required this.profileFunction,
    required this.tourouImageFunction,
    required this.fabFunction,
  }) : super(key: key);

  final bool isTest;

  final List<TourouData> newSelfTourous;
  final List<TourouData> trendSelfTourous;

  final void Function(TourouData tourouData) selfTourouTapFunction;
  final void Function(TourouData tourouData) profileFunction;
  final void Function(TourouData tourouData) tourouImageFunction;
  final void Function() fabFunction;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    final double bannerAdHeight = min(
      displayHeight * adaptiveBannerMaximumHeightRatio,
      adaptiveBannerMaximumHeight,
    );
    return DefaultTabController(
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
          ),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: TabBarView(
                    children: [
                      ListView.builder(
                        itemBuilder: (context, index) {
                          final selfTourou = newSelfTourous[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: tourouHorizontalMargin / 2,
                              horizontal: tourouHorizontalMargin,
                            ),
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
                              goodNumberColor: ColorName.switchAccentColor,
                              fontFamily: FontFamily.mplus1,
                              goodPadding: selfTourouGoodPadding,
                            ),
                          );
                        },
                      ),
                      ListView.builder(
                        itemBuilder: (context, index) {
                          final selfTourou = trendSelfTourous[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: tourouHorizontalMargin / 2,
                              horizontal: tourouHorizontalMargin,
                            ),
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
                              goodNumberColor: ColorName.switchAccentColor,
                              fontFamily: FontFamily.mplus1,
                              goodPadding: selfTourouGoodPadding,
                            ),
                          );
                        },
                      ),
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
                  const AdaptiveBannerAd(),
              ],
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: bannerAdHeight + fabHeightMargin),
          child: CustomFloatingActionButton(
            fabColor: ColorName.fABBackgoround,
            fabFunction: fabFunction,
            iconColor: ColorName.textWhite,
            iconSize: fabIconSize,
          ),
        ),
      ),
    );
  }
}
