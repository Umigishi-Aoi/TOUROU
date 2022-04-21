// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/toruou_data.dart';
import '../atoms/custom_text.dart';
import '../molecules/image_button.dart';

class TourouOrganism extends StatelessWidget {
  const TourouOrganism({
    Key? key,
    required this.tourouData,
    required this.profileImageHeight,
    required this.profileFunction,
    required this.textColor,
    required this.fontFamily,
    required this.userIdColor,
    required this.userNameFontSize,
    required this.tourouTextWidth,
    required this.tourouTextFontSize,
    required this.contentBottomPadding,
    required this.tourouImageHeight,
    required this.tourouImageFunction,
  }) : super(key: key);

  final TourouData tourouData;

  final double profileImageHeight;
  final void Function(TourouData tourouData) profileFunction;

  final Color textColor;
  final String fontFamily;
  final double userNameFontSize;

  final Color userIdColor;

  final double tourouTextWidth;
  final double tourouTextFontSize;
  final double contentBottomPadding;

  final double tourouImageHeight;
  final void Function(TourouData tourouData) tourouImageFunction;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageButton(
          firstImagePath: tourouData.profileImagePath,
          height: profileImageHeight,
          fit: BoxFit.cover,
          isCircle: true,
          function: () {
            profileFunction(tourouData);
          },
        ),
        CustomText(
          text: tourouData.userName,
          color: textColor,
          fontFamily: fontFamily,
          fontSize: userNameFontSize,
        ),
        CustomText(
          text: tourouData.userId,
          color: userIdColor,
          fontFamily: fontFamily,
          fontSize: userNameFontSize,
        ),
        Container(
          width: tourouTextWidth,
          alignment: Alignment.topLeft,
          child: CustomText(
            text: tourouData.tourouText,
            color: textColor,
            fontFamily: fontFamily,
            fontSize: tourouTextFontSize,
          ),
        ),
        SizedBox(
          height: contentBottomPadding,
        ),
        if (tourouData.tourouImagePath != null)
          Column(
            children: [
              ImageButton(
                firstImagePath: tourouData.tourouImagePath!,
                width: tourouTextWidth,
                height: tourouImageHeight,
                fit: BoxFit.contain,
                isCircle: false,
                function: () {
                  tourouImageFunction(tourouData);
                },
              ),
              SizedBox(
                height: contentBottomPadding,
              ),
            ],
          ),
      ],
    );
  }
}
