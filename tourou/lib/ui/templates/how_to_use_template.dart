// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/how_to_use_indicator.dart';
import '../molecules/how_to_use_molecules.dart';

class HowToUseTemplate extends StatelessWidget {
  final void Function() function;

  const HowToUseTemplate({
    Key? key,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> notifier = ValueNotifier(0);
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(howToUseTitlePadding),
                child: CustomText(
                  text: AppLocalizations.of(context)!.howToUseTitle,
                  fontSize: howToUseTitleFontSize,
                  color: ColorName.textWhite,
                  fontFamily: FontFamily.mplus1,
                ),
              ),
              Expanded(
                child: HowToUseMolecules(
                  notifier: notifier,
                  pageCount: howToUsePageCount,
                  imageHeight: deviceHeight * howToUseHeightRatio,
                  imageWidth: deviceWidth * howToUseWidthRatio,
                  imageFit: BoxFit.contain,
                ),
              ),
              HowToUseIndicator(
                notifier: notifier,
                pageCount: howToUsePageCount,
                indicatorHeight: howToUseIndicatorHeight,
                indicatorSize: howToUseIndicatorSize,
                indicatorMargin: howToUseIndicatorMargin,
                inActiveColor: ColorName.itemBackground,
                activeColor: ColorName.signInButtonWhite,
              ),
              Padding(
                  padding: const EdgeInsets.all(howToUseButtonPadding),
                  child: CustomElevatedButton(
                    text: AppLocalizations.of(context)!.howToUseText,
                    height: deviceHeight * buttonHeightRatio,
                    width: deviceWidth * buttonWidthRatio,
                    buttonColor: ColorName.tourouBackground,
                    function: function,
                    color: ColorName.mainBlack,
                    fontSize: deviceHeight *
                        buttonHeightRatio *
                        buttonHeightFontSizeRatio,
                    fontFamily: FontFamily.mplus1,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
