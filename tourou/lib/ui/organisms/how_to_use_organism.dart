// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';
import '../molecules/how_to_use_indicator.dart';
import '../molecules/how_to_use_molecules.dart';

class HowToUseOrganisms extends StatelessWidget {
  final String titleText;
  final double? titleFontSize;
  final double? imageHeight;
  final double? imageWidth;
  final double? indicatorHeight;
  final double? indicatorSize;
  final double? indicatorMargin;
  final String buttonText;
  final void Function() function;

  const HowToUseOrganisms({
    Key? key,
    required this.titleText,
    this.titleFontSize,
    this.imageWidth,
    this.imageHeight,
    this.indicatorHeight,
    this.indicatorSize,
    this.indicatorMargin,
    required this.buttonText,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> notifier = ValueNotifier(0);
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(howToUseTitlePadding),
          child: CustomText(
            text: titleText,
            fontSize: titleFontSize ?? howToUseTitleFontSize,
          ),
        ),

        Expanded(
          child: HowToUseMolecules(
            notifier: notifier,
            imageHeight: imageHeight ?? deviceHeight * howToUseHeightRatio,
            imageWidth: imageWidth ?? deviceWidth * howToUseWidthRatio,
          ),
        ),
        HowToUseIndicator(
          notifier: notifier,
          indicatorHeight: indicatorHeight ?? howToUseIndicatorHeight,
          indicatorSize: indicatorSize ?? howToUseIndicatorSize,
          indicatorMargin: indicatorMargin ?? howToUseIndicatorMargin,
        ),
        Padding(
          padding: const EdgeInsets.all(howToUseButtonPadding),
          child: CustomText(
            text: buttonText,
            color: ColorName.textButton,
            function: function,
          ),
        ),
      ],
    );
  }
}
