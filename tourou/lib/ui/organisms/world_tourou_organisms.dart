// Flutter imports:
import 'package:flutter/material.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';
import 'package:tourou/ui/molecules/tourou_molecules.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/custom_icon_button.dart';

class WorldTourouOrganisms extends StatelessWidget {
  final double? tourouWidth;

  final void Function() reportFunction;

  final String profileImagePath;
  final double? profileImageHeight;

  final String userName;
  final Color? textColor;

  final String userId;
  final Color? userIdColor;

  final String tourouText;
  final double? tourouContentWidth;

  final String? tourouImagePath;

  final String goodButtonText;
  final double? goodButtonHeight;
  final double? goodButtonWidth;
  final void Function() goodButtonFunction;
  final Color? goodButtonActiveColor;
  final Color? goodButtonInactiveColor;

  final String goodNumber;
  final double? goodNumberFontSize;
  final Color? goodNumberColor;

  const WorldTourouOrganisms({
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
    this.profileImageHeight,
    this.textColor,
    this.userIdColor,
    this.tourouContentWidth,
    this.tourouImagePath,
    this.goodButtonHeight,
    this.goodButtonWidth,
    this.goodButtonActiveColor,
    this.goodButtonInactiveColor,
    this.goodNumberFontSize,
    this.goodNumberColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;

    return Container(
      width: tourouWidth ?? displayWidth * tourouWidthRatio,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: CustomIconButton(
              function: reportFunction,
              iconData: Icons.error_outline,
              size: displayHeight * tourouReportIconSizeRatio,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TourouMolecules(
                  profileImagePath: profileImagePath,
                  profileImageHeight: profileImageHeight ??
                      displayHeight * tourouProfileImageHeightRatio,
                  userName: userName,
                  userId: userId,
                  tourouText: tourouText,
                  tourouTextWidth: tourouContentWidth ??
                      displayWidth * tourouContentWidthRatio,
                  textColor: textColor,
                  userIdColor: userIdColor,
                ),
                if (tourouImagePath != null)
                  CustomImage(
                    path: tourouImagePath!,
                    width: tourouContentWidth ??
                        displayWidth * tourouContentWidthRatio,
                  ),
                Row(
                  children: [
                    SizedBox(
                      width: displayWidth * goodButtonMarginRatio,
                    ),
                    CustomElevatedButton(
                      text: goodButtonText,
                      height: goodButtonHeight ??
                          displayHeight * goodButtonHeightRatio,
                      width: goodButtonWidth ??
                          displayWidth * goodButtonWidthRatio,
                      color: goodButtonActiveColor ?? ColorName.goodBackgoround,
                    ),
                    SizedBox(
                      width: displayWidth * goodButtonMarginRatio,
                    ),
                    CustomText(
                      text: goodNumber,
                      fontSize:
                          goodNumberFontSize ?? goodNumberFontSizeConstant,
                      color: goodNumberColor ?? ColorName.textButton,
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
