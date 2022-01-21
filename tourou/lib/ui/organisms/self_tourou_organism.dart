// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import 'tourou_organism.dart';

class SelfTourouOrganism extends StatelessWidget {
  final double tourouWidth;

  final void Function() reportFunction;

  final String profileImagePath;
  final double profileImageHeight;
  final BoxFit profileImageFit;

  final double goodPadding;

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
  final BoxFit tourouImageFit;

  final String goodNumber;
  final double goodNumberFontSize;
  final Color goodNumberColor;

  const SelfTourouOrganism({
    Key? key,
    required this.reportFunction,
    required this.profileImagePath,
    required this.profileImageFit,
    required this.goodPadding,
    required this.userName,
    required this.userNameFontSize,
    required this.userId,
    required this.tourouText,
    required this.tourouTextFontSize,
    required this.fontFamily,
    required this.goodNumber,
    required this.tourouWidth,
    required this.profileImageHeight,
    required this.textColor,
    required this.userIdColor,
    required this.tourouContentWidth,
    this.tourouImagePath,
    required this.tourouImageHeight,
    required this.tourouImageFit,
    required this.goodNumberFontSize,
    required this.goodNumberColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: tourouWidth,
      child: Stack(
        children: [
          Positioned(
              top: profileImageHeight,
              right: goodPadding,
              child: CustomText(
                text: goodNumber,
                fontSize: goodNumberFontSize,
                color: goodNumberColor,
                fontFamily: fontFamily,
              )),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TourouMolecule(
                  profileImagePath: profileImagePath,
                  profileImageHeight: profileImageHeight,
                  imageFit: profileImageFit,
                  userName: userName,
                  userNameFontSize: userNameFontSize,
                  fontFamily: fontFamily,
                  userId: userId,
                  tourouText: tourouText,
                  tourouTextWidth: tourouContentWidth,
                  tourouTextFontSize: tourouTextFontSize,
                  textColor: textColor,
                  userIdColor: userIdColor,
                ),
                if (tourouImagePath != null)
                  CustomImage(
                    path: tourouImagePath!,
                    width: tourouContentWidth,
                    height: tourouImageHeight,
                    fit: tourouImageFit,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
