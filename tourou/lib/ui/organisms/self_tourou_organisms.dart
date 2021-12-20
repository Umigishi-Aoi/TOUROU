// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/tourou_molecules.dart';

class SelfTourouOrganisms extends StatelessWidget {
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

  final String goodNumber;
  final double? goodNumberFontSize;
  final Color? goodNumberColor;

  const SelfTourouOrganisms(
      {Key? key,
      required this.reportFunction,
      required this.profileImagePath,
      required this.userName,
      required this.userId,
      required this.tourouText,
      required this.goodNumber,
      this.tourouWidth,
      this.profileImageHeight,
      this.textColor,
      this.userIdColor,
      this.tourouContentWidth,
      this.tourouImagePath,
      this.goodNumberFontSize,
      this.goodNumberColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    double displayHeight = MediaQuery.of(context).size.height;

    double _profileImageHeight =
        profileImageHeight ?? displayHeight * tourouProfileImageHeightRatio;

    return Container(
      width: tourouWidth ?? displayWidth * tourouWidthRatio,
      child: Stack(
        children: [
          Positioned(
              top: _profileImageHeight + mainTextFontSize,
              right: goodNumberPadding,
              child: CustomText(
                text: goodNumber,
                fontSize: goodNumberFontSize ?? goodNumberFontSizeConstant,
                color: goodNumberColor ?? ColorName.textButton,
              )),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
