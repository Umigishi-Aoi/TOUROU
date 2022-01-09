// Flutter imports:
import 'package:flutter/material.dart';

class TourouTabBar extends StatelessWidget {
  final String firstTabText;
  final String secondTabText;
  final TabController controller;

  final Color? labelColor;
  final Color? unselectedLabelColor;
  final double indicatorWeight;
  final double horizontalPadding;
  final double verticalPadding;

  late final List<Tab> tabs;

  TourouTabBar({
    Key? key,
    required this.firstTabText,
    required this.secondTabText,
    required this.controller,
    this.labelColor,
    this.unselectedLabelColor,
    required this.indicatorWeight,
    required this.horizontalPadding,
    required this.verticalPadding,
  }) : super(key: key) {
    this.tabs = [
      Tab(
        text: firstTabText,
      ),
      Tab(
        text: secondTabText,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: tabs,
      controller: controller,
      labelColor: labelColor,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
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
