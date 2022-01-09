// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/tourou_molecule.dart';

class SelfTourouOrganism extends StatelessWidget {
  final double? tourouWidth;

  final void Function() reportFunction;

  final String profileImagePath;
  final double profileImageHeight;

  final double goodPadding;

  final String userName;
  final Color? textColor;
  final String? fontFamily;

  final String userId;
  final Color? userIdColor;

  final String tourouText;
  final double tourouContentWidth;

  final String? tourouImagePath;

  final String goodNumber;
  final double? goodNumberFontSize;
  final Color? goodNumberColor;

  const SelfTourouOrganism({
    Key? key,
    required this.reportFunction,
    required this.profileImagePath,
    required this.goodPadding,
    required this.userName,
    required this.userId,
    required this.tourouText,
    this.fontFamily,
    required this.goodNumber,
    this.tourouWidth,
    required this.profileImageHeight,
    this.textColor,
    this.userIdColor,
    required this.tourouContentWidth,
    this.tourouImagePath,
    this.goodNumberFontSize,
    this.goodNumberColor,
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
                  userName: userName,
                  userId: userId,
                  tourouText: tourouText,
                  tourouTextWidth: tourouContentWidth,
                  textColor: textColor,
                  userIdColor: userIdColor,
                ),
                if (tourouImagePath != null)
                  CustomImage(
                    path: tourouImagePath!,
                    width: tourouContentWidth,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
