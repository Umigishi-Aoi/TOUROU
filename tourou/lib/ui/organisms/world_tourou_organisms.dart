// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/atoms/custom_images.dart';
import 'package:tourou/ui/atoms/custom_text.dart';
import 'package:tourou/ui/molecules/custom_icon_button.dart';

class WorldTourouMolecules extends StatelessWidget {
  final double? tourouWidth;

  final void Function() reportFunction;

  final String profileImagePath;
  final double? profileImageHeight;

  final String userName;
  final Color? textColor;

  final String userId;
  final Color? userIdColor;

  final String tourouText;

  const WorldTourouMolecules(
      {Key? key,
      this.tourouWidth,
      required this.profileImagePath,
      this.profileImageHeight,
      required this.userName,
      this.textColor,
      required this.userId,
      this.userIdColor,
      required this.tourouText,
      required this.reportFunction})
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
