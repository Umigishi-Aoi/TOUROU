// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';
import '../atoms/custom_icon.dart';

class HowToUseIndicator extends StatelessWidget {
  final ValueNotifier<double> notifier;

  final double indicatorHeight;
  final double indicatorSize;
  final double indicatorMargin;

  const HowToUseIndicator({
    Key? key,
    required this.notifier,
    required this.indicatorHeight,
    required this.indicatorSize,
    required this.indicatorMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: indicatorHeight,
      child: SlidingIndicator(
        indicatorCount: howToUsePageCount,
        notifier: notifier,
        activeIndicator: CustomIcon(
          iconData: Icons.circle,
          color: ColorName.signInButtonWhite,
          size: indicatorSize,
        ),
        inActiveIndicator: CustomIcon(
          iconData: Icons.circle,
          color: ColorName.itemBackground,
          size: indicatorSize,
        ),
        margin: indicatorMargin,
      ),
    );
  }
}
