// Flutter imports:
import 'package:flutter/material.dart';
import 'package:tourou/ui/molecules/image_button.dart';

// Project imports:
import '../../tourou.dart';
import '../atoms/custom_text.dart';

class TourouOrganism extends StatelessWidget {
  final String profileImagePath;
  final double profileImageHeight;
  final void Function(Tourou tourou) profileFunction;
  final Tourou tourou;

  final String userName;
  final Color textColor;
  final String fontFamily;
  final double userNameFontSize;

  final String userId;
  final Color userIdColor;

  final String tourouText;
  final double tourouTextWidth;
  final double tourouTextFontSize;

  final String? tourouImagePath;
  final double tourouImageHeight;
  final void Function(Object object) tourouImageFunction;

  const TourouOrganism({
    Key? key,
    required this.profileImagePath,
    required this.profileImageHeight,
    required this.profileFunction,
    required this.tourou,
    required this.userName,
    required this.textColor,
    required this.fontFamily,
    required this.userId,
    required this.userIdColor,
    required this.userNameFontSize,
    required this.tourouText,
    required this.tourouTextWidth,
    required this.tourouTextFontSize,
    this.tourouImagePath,
    required this.tourouImageHeight,
    required this.tourouImageFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageButton(
          firstImagePath: tourou,
          height: profileImageHeight,
          fit: BoxFit.cover,
          isCircle: true,
          objectFunction: profileFunction,
          object: object,
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
        if (tourouImagePath != null)
          ImageButton(
            firstImagePath: tourouImagePath!,
            width: tourouTextWidth,
            height: tourouImageHeight,
            fit: BoxFit.contain,
            isCircle: false,
            objectFunction: tourouImageFunction,
            object: object,
          ),
      ],
    );
  }
}
