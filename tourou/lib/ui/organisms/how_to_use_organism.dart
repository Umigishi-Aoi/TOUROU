// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_icon.dart';
import '../atoms/custom_text.dart';
import '../molecules/how_to_use_indicator.dart';
import '../molecules/how_to_use_molecules.dart';
import '../molecules/text_text_button.dart';

class HowToUseOrganisms extends StatelessWidget {
  final double? imageHeight;
  final double? imageWidth;
  final double? indicatorHeight;
  final double? indicatorSize;
  final double? indicatorMargin;
  final String text;

  const HowToUseOrganisms({
    Key? key,
    this.imageWidth,
    this.imageHeight,
    this.indicatorHeight,
    this.indicatorSize,
    this.indicatorMargin,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<double> notifier = ValueNotifier(0);
    final double deviceHeight = MediaQuery.of(context).size.height;
    final double deviceWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
        CustomText(
          text: text,
          color: ColorName.textButton,
        ),
      ],
    );
  }
}
