// Flutter imports:
import 'package:flutter/material.dart';

class TourouTabBar extends StatelessWidget {
  TourouTabBar({
    Key? key,
    required this.firstTabText,
    required this.secondTabText,
    required this.labelColor,
    required this.unselectedLabelColor,
    required this.indicatorWeight,
    required this.horizontalPadding,
    required this.verticalPadding,
  }) : super(key: key) {
    tabs = [
      Tab(
        key: const ValueKey('firstTab'),
        text: firstTabText,
      ),
      Tab(
        key: const ValueKey('secondTab'),
        text: secondTabText,
      ),
    ];
  }

  final String firstTabText;
  final String secondTabText;

  final Color labelColor;
  final Color unselectedLabelColor;
  final double indicatorWeight;
  final double horizontalPadding;
  final double verticalPadding;

  late final List<Tab> tabs;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs,
      labelColor: labelColor,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelColor: unselectedLabelColor,
      indicatorColor: labelColor,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: indicatorWeight,
      indicatorPadding: EdgeInsets.symmetric(
        horizontal: horizontalPadding,
        vertical: verticalPadding,
      ),
    );
  }
}
