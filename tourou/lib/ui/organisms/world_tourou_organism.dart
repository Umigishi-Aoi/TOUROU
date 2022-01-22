// Flutter imports:
import 'package:flutter/material.dart';
import 'package:tourou/temp/toruou_data.dart';

// Project imports:
import '../atoms/custom_text.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/custom_icon_button.dart';
import 'tourou_organism.dart';

class WorldTourouOrganism extends StatelessWidget {
  final TourouData tourouData;

  final void Function(TourouData tourouData) worldTourouTapFunction;

  final double tourouWidth;

  final void Function(TourouData tourouData) reportFunction;
  final double errorIconSize;
  final Color iconColor;

  final double profileImageHeight;
  final void Function(TourouData tourouData) profileFunction;

  final double userNameFontSize;
  final Color textColor;

  final String fontFamily;

  final Color userIdColor;

  final double tourouTextFontSize;
  final double tourouContentWidth;

  final double tourouImageHeight;
  final void Function(TourouData tourouData) tourouImageFunction;

  final String goodButtonText;
  final double goodButtonHeight;
  final double goodButtonWidth;
  final void Function(TourouData tourouData) goodButtonFunction;
  final Color buttonColor;
  final double buttonFontSize;

  final double goodButtonMargin;

  final String goodNumber;
  final double goodNumberFontSize;
  final Color goodNumberColor;

  const WorldTourouOrganism({
    Key? key,
    required this.tourouData,
    required this.worldTourouTapFunction,
    required this.tourouWidth,
    required this.iconColor,
    required this.profileImageHeight,
    required this.profileFunction,
    required this.userNameFontSize,
    required this.tourouTextFontSize,
    required this.reportFunction,
    required this.goodButtonText,
    required this.goodButtonFunction,
    required this.goodNumber,
    required this.textColor,
    required this.userIdColor,
    required this.tourouContentWidth,
    required this.tourouImageHeight,
    required this.tourouImageFunction,
    required this.goodButtonHeight,
    required this.goodButtonWidth,
    required this.buttonColor,
    required this.buttonFontSize,
    required this.goodNumberFontSize,
    required this.goodNumberColor,
    required this.errorIconSize,
    required this.fontFamily,
    required this.goodButtonMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        worldTourouTapFunction(tourouData);
      },
      child: Container(
        width: tourouWidth,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CustomIconButton(
                function: () {
                  reportFunction(tourouData);
                },
                iconData: Icons.error_outline,
                size: errorIconSize,
                color: iconColor,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TourouOrganism(
                    tourouData: tourouData,
                    profileImageHeight: profileImageHeight,
                    profileFunction: profileFunction,
                    userNameFontSize: userNameFontSize,
                    tourouTextFontSize: tourouTextFontSize,
                    tourouTextWidth: tourouContentWidth,
                    textColor: textColor,
                    userIdColor: userIdColor,
                    fontFamily: fontFamily,
                    tourouImageHeight: tourouImageHeight,
                    tourouImageFunction: tourouImageFunction,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: goodButtonMargin,
                      ),
                      CustomElevatedButton(
                        text: goodButtonText,
                        height: goodButtonHeight,
                        width: goodButtonWidth,
                        color: textColor,
                        fontFamily: fontFamily,
                        buttonColor: buttonColor,
                        fontSize: buttonFontSize,
                        function: () {
                          goodButtonFunction(tourouData);
                        },
                      ),
                      SizedBox(
                        width: goodButtonMargin,
                      ),
                      CustomText(
                        text: tourouData.goodNumber,
                        fontSize: goodNumberFontSize,
                        color: goodNumberColor,
                        fontFamily: fontFamily,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
