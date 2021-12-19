import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/atoms/custom_icon.dart';
import 'package:tourou/ui/atoms/custom_images.dart';
import 'package:tourou/ui/atoms/custom_text.dart';

class TourouMolecules extends StatelessWidget {
  final double? tourouWidth;

  final String profileImagePath;
  final double? profileImageHeight;

  final String userName;
  final Color? textColor;

  final String userId;
  final Color? userIdColor;

  final String tourouText;

  const TourouMolecules(
      {Key? key,
      this.tourouWidth,
      required this.profileImagePath,
      this.profileImageHeight,
      required this.userName,
      this.textColor,
      required this.userId,
      this.userIdColor,
      required this.tourouText})
      : super(key: key);

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
            child: CustomIcon(
              iconData: Icons.error_outline,
              size: displayHeight * tourouReportIconSizeRatio,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImages(
                  path: profileImagePath,
                  height: profileImageHeight ??
                      displayHeight * tourouProfileImageHeightRatio,
                  isCircle: true,
                ),
                CustomText(
                  text: userName,
                  color: textColor ?? ColorName.mainBlack,
                ),
                CustomText(
                  text: userId,
                  color: userIdColor ?? ColorName.userIdText,
                ),
                Container(
                  width: displayHeight * tourouTextWidthRatio,
                  alignment: Alignment.topLeft,
                  child: CustomText(
                    text: tourouText,
                    color: textColor ?? ColorName.mainBlack,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
