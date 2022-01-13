// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';

class TourouMolecule extends StatelessWidget {
  final String profileImagePath;
  final double profileImageHeight;
  final BoxFit imageFit;

  final String userName;
  final Color textColor;
  final String fontFamily;
  final double userNameFontSize;

  final String userId;
  final Color userIdColor;

  final String tourouText;
  final double tourouTextWidth;
  final double tourouTextFontSize;

  const TourouMolecule({
    Key? key,
    required this.profileImagePath,
    required this.profileImageHeight,
    required this.imageFit,
    required this.userName,
    required this.textColor,
    required this.fontFamily,
    required this.userId,
    required this.userIdColor,
    required this.userNameFontSize,
    required this.tourouText,
    required this.tourouTextWidth,
    required this.tourouTextFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomImage(
          path: profileImagePath,
          height: profileImageHeight,
          isCircle: true,
          fit: imageFit,
        ),
        CustomText(
          text: userName,
          color: textColor,
          fontFamily: fontFamily,
          fontSize: userNameFontSize,
        ),
        CustomText(
          text: userId,
          color: userIdColor,
          fontFamily: fontFamily,
          fontSize: userNameFontSize,
        ),
        Container(
          width: tourouTextWidth,
          alignment: Alignment.topLeft,
          child: CustomText(
            text: tourouText,
            color: textColor,
            fontFamily: fontFamily,
            fontSize: tourouTextFontSize,
          ),
        ),
      ],
    );
  }
}
