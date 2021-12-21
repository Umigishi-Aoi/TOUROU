// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/image_button.dart';
import '../molecules/text_text_button.dart';

class TitleOrganism extends StatelessWidget {
  final String logoPath;
  final double? logoHeight;
  final double? logoWidth;

  final String additionalTitleText;
  final Color? additionalTitleColor;
  final double? additionalTitleFontSize;
  final TextAlign? additionalTitleTextAlign;

  final String firstImagePath;
  final String secondImagePath;
  final double? imageHeight;
  final double? imageWidth;
  final void Function() imageButtonFunction;

  final String explanationText;
  final Color? explanationColor;
  final double? explanationFontSize;
  final TextAlign? explanationTextAlign;

  final String textButtonFirstText;
  final String textButtonSecondText;
  final double? textButtonFontSize;
  final void Function() textButtonFunction;

  final double? logoTopMargin;
  final double? logoBottomMargin;
  final double? textButtonTopMargin;

  const TitleOrganism(
      {Key? key,
      required this.logoPath,
      required this.additionalTitleText,
      required this.firstImagePath,
      required this.secondImagePath,
      required this.imageButtonFunction,
      required this.explanationText,
      required this.textButtonFirstText,
      required this.textButtonSecondText,
      required this.textButtonFunction,
      this.logoHeight,
      this.logoWidth,
      this.additionalTitleColor,
      this.additionalTitleFontSize,
      this.imageHeight,
      this.imageWidth,
      this.explanationColor,
      this.explanationFontSize,
      this.textButtonFontSize,
      this.logoTopMargin,
      this.logoBottomMargin,
      this.textButtonTopMargin,
      this.additionalTitleTextAlign,
      this.explanationTextAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: logoTopMargin ?? displayHeight * logoTopMarginRatio,
        ),
        CustomImage(
          path: logoPath,
          height: logoHeight ?? displayHeight * logoHeightRatio,
          width: logoWidth ?? displayWidth * logoWidthRatio,
        ),
        SizedBox(
          height: logoBottomMargin ?? displayHeight * logoBottomMarginRatio,
        ),
        CustomText(
          text: additionalTitleText,
          color: additionalTitleColor,
          fontSize: additionalTitleFontSize ?? additionalTitleFontSizeConstant,
          textAlign: additionalTitleTextAlign ?? TextAlign.center,
        ),
        ImageButton(
          firstImagePath: firstImagePath,
          secondImagePath: secondImagePath,
          height: imageHeight ?? displayHeight * titleButtonHeightRatio,
          width: imageWidth ?? displayWidth * titleButtonWidthRatio,
          function: imageButtonFunction,
        ),
        CustomText(
            text: explanationText,
            color: explanationColor ?? ColorName.textWhite,
            fontSize: explanationFontSize ?? explanationFontSizeConstant,
            textAlign: additionalTitleTextAlign ?? TextAlign.center),
        SizedBox(
          height: textButtonTopMargin ??
              displayHeight * titleTextButtonTopMarginRatio,
        ),
        TextTextButton(
          firstText: textButtonFirstText,
          secondText: textButtonSecondText,
          fontSize: textButtonFontSize ?? titleTextButtonFontSize,
          function: textButtonFunction,
        )
      ],
    );
  }
}
