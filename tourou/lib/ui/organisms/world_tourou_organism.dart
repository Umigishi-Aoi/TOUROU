// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_text.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/custom_icon_button.dart';
import 'tourou_organism.dart';

class WorldTourouOrganism extends StatelessWidget {
  final Object tourou;

  final double tourouWidth;

  final void Function() reportFunction;
  final double errorIconSize;
  final Color iconColor;

  final String profileImagePath;
  final double profileImageHeight;

  final String userName;
  final double userNameFontSize;
  final Color textColor;

  final String fontFamily;

  final String userId;
  final Color userIdColor;

  final String tourouText;
  final double tourouTextFontSize;
  final double tourouContentWidth;

  final String? tourouImagePath;
  final double tourouImageHeight;

  final String goodButtonText;
  final double goodButtonHeight;
  final double goodButtonWidth;
  final void Function() goodButtonFunction;
  final Color buttonColor;
  final double buttonFontSize;

  final double goodButtonMargin;

  final String goodNumber;
  final double goodNumberFontSize;
  final Color goodNumberColor;

  const WorldTourouOrganism({
    Key? key,
    required this.tourouWidth,
    required this.iconColor,
    required this.profileImagePath,
    required this.profileImageHeight,
    required this.userName,
    required this.userNameFontSize,
    required this.userId,
    required this.tourouText,
    required this.tourouTextFontSize,
    required this.reportFunction,
    required this.goodButtonText,
    required this.goodButtonFunction,
    required this.goodNumber,
    required this.textColor,
    required this.userIdColor,
    required this.tourouContentWidth,
    this.tourouImagePath,
    required this.tourouImageHeight,
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
    return Container(
      width: tourouWidth,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CustomIconButton(
              function: reportFunction,
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
                  profileImagePath: profileImagePath,
                  profileImageHeight: profileImageHeight,
                  profileFunction: profileFunction,
                  object: object,
                  userName: userName,
                  userNameFontSize: userNameFontSize,
                  userId: userId,
                  tourouText: tourouText,
                  tourouTextFontSize: tourouTextFontSize,
                  tourouTextWidth: tourouContentWidth,
                  textColor: textColor,
                  userIdColor: userIdColor,
                  fontFamily: fontFamily,
                  tourouImagePath: tourouImagePath,
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
                      function: goodButtonFunction,
                    ),
                    SizedBox(
                      width: goodButtonMargin,
                    ),
                    CustomText(
                      text: goodNumber,
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
    );
  }
}
