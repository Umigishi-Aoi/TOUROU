// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/custom_icon_button.dart';
import '../molecules/tourou_molecule.dart';

class WorldTourouOrganism extends StatelessWidget {
  final double? tourouWidth;

  final void Function() reportFunction;
  final double errorIconSize;

  final String profileImagePath;
  final double profileImageHeight;

  final String userName;
  final Color? textColor;

  final String? fontFamily;

  final String userId;
  final Color? userIdColor;

  final String tourouText;
  final double tourouContentWidth;

  final String? tourouImagePath;

  final String goodButtonText;
  final double goodButtonHeight;
  final double goodButtonWidth;
  final void Function() goodButtonFunction;
  final Color? goodButtonActiveColor;
  final Color? goodButtonInactiveColor;

  final double goodButtonMargin;

  final String goodNumber;
  final double? goodNumberFontSize;
  final Color? goodNumberColor;

  const WorldTourouOrganism({
    Key? key,
    required this.profileImagePath,
    required this.userName,
    required this.userId,
    required this.tourouText,
    required this.reportFunction,
    required this.goodButtonText,
    required this.goodButtonFunction,
    required this.goodNumber,
    this.tourouWidth,
    required this.profileImageHeight,
    this.textColor,
    this.userIdColor,
    required this.tourouContentWidth,
    this.tourouImagePath,
    required this.goodButtonHeight,
    required this.goodButtonWidth,
    this.goodButtonActiveColor,
    this.goodButtonInactiveColor,
    this.goodNumberFontSize,
    this.goodNumberColor,
    required this.errorIconSize,
    this.fontFamily,
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
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TourouMolecule(
                  profileImagePath: profileImagePath,
                  profileImageHeight: profileImageHeight,
                  userName: userName,
                  userId: userId,
                  tourouText: tourouText,
                  tourouTextWidth: tourouContentWidth,
                  textColor: textColor,
                  userIdColor: userIdColor,
                  fontFamily: fontFamily,
                ),
                if (tourouImagePath != null)
                  CustomImage(
                    path: tourouImagePath!,
                    width: tourouContentWidth,
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
                      color: goodButtonActiveColor,
                      fontFamily: fontFamily,
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
