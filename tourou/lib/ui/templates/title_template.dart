// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_image.dart';
import '../atoms/custom_text.dart';
import '../molecules/image_button.dart';
import '../molecules/text_text_button.dart';

class TitleTemplate extends StatelessWidget {
  final void Function() imageButtonFunction;

  final void Function() textButtonFunction;

  const TitleTemplate({
    Key? key,
    required this.imageButtonFunction,
    required this.textButtonFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: displayHeight * logoTopMarginRatio,
              ),
              CustomImage(
                path: Assets.logo.logoA.path,
                height: displayHeight * logoHeightRatio,
                width: displayWidth * logoWidthRatio,
                fit: BoxFit.contain,
              ),
              SizedBox(
                height: displayHeight * logoBottomMarginRatio,
              ),
              CustomText(
                text: AppLocalizations.of(context)!.additionalTitleText,
                color: ColorName.textWhite,
                fontSize: additionalTitleFontSizeConstant,
                textAlign: TextAlign.center,
                fontFamily: FontFamily.mplus1,
              ),
              ImageButton(
                firstImagePath: Assets.images.enterIcon.path,
                secondImagePath: Assets.images.enterIconTourou.path,
                height: displayHeight * titleButtonHeightRatio,
                width: displayWidth * titleButtonWidthRatio,
                function: imageButtonFunction,
                duration: imageDuration,
                isCircle: false,
                fit: BoxFit.contain,
              ),
              CustomText(
                text: AppLocalizations.of(context)!.explanationText,
                color: ColorName.textWhite,
                fontSize: explanationFontSizeConstant,
                textAlign: TextAlign.center,
                fontFamily: FontFamily.mplus1,
              ),
              SizedBox(
                height: displayHeight * titleTextButtonTopMarginRatio,
              ),
              TextTextButton(
                firstText:
                    AppLocalizations.of(context)!.titleTextButtonFirstText,
                secondText:
                    AppLocalizations.of(context)!.titleTextButtonSecondText,
                fontSize: titleTextButtonFontSize,
                function: textButtonFunction,
                firstColor: ColorName.textWhite,
                secondColor: ColorName.textButton,
                fontFamily: FontFamily.mplus1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
