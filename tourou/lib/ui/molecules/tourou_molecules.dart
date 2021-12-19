// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/ui/atoms/custom_images.dart';
import 'package:tourou/ui/atoms/custom_text.dart';

class TourouMolecules extends StatelessWidget {
  final String profileImagePath;
  final double profileImageHeight;

  final String userName;
  final Color? textColor;

  final String userId;
  final Color? userIdColor;

  final String tourouText;
  final double tourouTextWidth;

  const TourouMolecules(
      {Key? key,
      required this.profileImagePath,
      required this.profileImageHeight,
      required this.userName,
      this.textColor,
      required this.userId,
      this.userIdColor,
      required this.tourouText,
      required this.tourouTextWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomImages(
          path: profileImagePath,
          height: profileImageHeight,
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
          width: tourouTextWidth,
          alignment: Alignment.topLeft,
          child: CustomText(
            text: tourouText,
            color: textColor ?? ColorName.mainBlack,
          ),
        ),
      ],
    );
  }
}
