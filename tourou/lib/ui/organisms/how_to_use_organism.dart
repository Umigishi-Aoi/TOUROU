import 'package:flutter/material.dart';
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/res/constants.dart';
import 'package:tourou/ui/atoms/custom_icon.dart';
import 'package:tourou/ui/molecules/how_to_use_molecules.dart';

class HowToUseOrganisms extends StatelessWidget {
  final double? imageHeight;
  final double? imageWidth;
  final double? indicatorHeight;
  final double? indicatorSize;
  final double? indicatorMargin;

  const HowToUseOrganisms({
    Key? key,
    this.imageWidth,
    this.imageHeight,
    this.indicatorHeight,
    this.indicatorSize,
    this.indicatorMargin,
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
        Container(
          width: double.infinity,
          height: indicatorHeight ?? howToUseIndicatorHeight,
          child: SlidingIndicator(
            indicatorCount: howToUsePageCount,
            notifier: notifier,
            activeIndicator: CustomIcon(
              iconData: Icons.circle,
              color: ColorName.signInButtonWhite,
              size: indicatorSize ?? howToUseIndicatorSize,
            ),
            inActiveIndicator: CustomIcon(
              iconData: Icons.circle,
              color: ColorName.itemBackground,
              size: indicatorSize ?? howToUseIndicatorSize,
            ),
            margin: indicatorMargin ?? howToUseIndicatorMargin,
          ),
        )
      ],
    );
  }
}
