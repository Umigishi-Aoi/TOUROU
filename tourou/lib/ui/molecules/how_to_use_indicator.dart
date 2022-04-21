// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_sliding_tutorial/flutter_sliding_tutorial.dart';

// Project imports:
import '../atoms/custom_icon.dart';

class HowToUseIndicator extends StatelessWidget {
  const HowToUseIndicator({
    Key? key,
    required this.notifier,
    required this.pageCount,
    required this.indicatorHeight,
    required this.indicatorSize,
    required this.indicatorMargin,
    required this.activeColor,
    required this.inActiveColor,
  }) : super(key: key);

  final ValueNotifier<double> notifier;

  final int pageCount;

  final double indicatorHeight;
  final double indicatorSize;
  final double indicatorMargin;

  final Color activeColor;
  final Color inActiveColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: indicatorHeight,
      child: SlidingIndicator(
        indicatorCount: pageCount,
        notifier: notifier,
        activeIndicator: CustomIcon(
          iconData: Icons.circle,
          color: activeColor,
          size: indicatorSize,
        ),
        inActiveIndicator: CustomIcon(
          iconData: Icons.circle,
          color: inActiveColor,
          size: indicatorSize,
        ),
        margin: indicatorMargin,
      ),
    );
  }
}
