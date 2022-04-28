// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/toruou_data.dart';
import '../atoms/custom_text.dart';
import 'tourou_organism.dart';

class SelfTourouOrganism extends StatelessWidget {
  const SelfTourouOrganism({
    Key? key,
    required this.tourouData,
    required this.tourouWidth,
    required this.tourouColor,
    required this.borderRadius,
    required this.verticalPadding,
    required this.selfTourouTapFunction,
    required this.profileImageHeight,
    required this.profileFunction,
    required this.userNameFontSize,
    required this.userIdColor,
    required this.tourouTextFontSize,
    required this.fontFamily,
    required this.textColor,
    required this.tourouContentWidth,
    required this.contentBottomPadding,
    required this.tourouImageHeight,
    required this.tourouImageFunction,
    required this.goodNumberColor,
    required this.goodPadding,
  }) : super(key: key);

  final TourouData tourouData;
  final double tourouWidth;
  final Color tourouColor;
  final double borderRadius;
  final double verticalPadding;

  final void Function(TourouData tourouData) selfTourouTapFunction;

  final double profileImageHeight;
  final void Function(TourouData tourouData) profileFunction;

  final double goodPadding;

  final double userNameFontSize;
  final Color textColor;
  final String fontFamily;

  final Color userIdColor;

  final double tourouTextFontSize;
  final double tourouContentWidth;
  final double contentBottomPadding;

  final double tourouImageHeight;
  final void Function(TourouData tourouData) tourouImageFunction;

  final Color goodNumberColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        selfTourouTapFunction(tourouData);
      },
      child: Container(
        width: tourouWidth,
        decoration: BoxDecoration(
          color: tourouColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Stack(
          children: [
            Positioned(
              top: profileImageHeight + tourouTextFontSize * 2,
              right: goodPadding,
              child: CustomText(
                text: tourouData.goodNumber,
                fontSize: tourouTextFontSize,
                color: goodNumberColor,
                fontFamily: fontFamily,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: verticalPadding),
                child: Column(
                  children: [
                    TourouOrganism(
                      tourouData: tourouData,
                      profileImageHeight: profileImageHeight,
                      profileFunction: profileFunction,
                      userNameFontSize: userNameFontSize,
                      fontFamily: fontFamily,
                      tourouTextWidth: tourouContentWidth,
                      tourouTextFontSize: tourouTextFontSize,
                      contentBottomPadding: contentBottomPadding,
                      textColor: textColor,
                      userIdColor: userIdColor,
                      tourouImageHeight: tourouImageHeight,
                      tourouImageFunction: tourouImageFunction,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
