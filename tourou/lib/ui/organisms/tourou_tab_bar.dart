// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/colors.gen.dart';
import '../../res/constants.dart';

class TourouTabBar extends StatelessWidget {
  final String firstTabText;
  final String secondTabText;
  final TabController controller;

  final Color? labelColor;
  final Color? unselectedLabelColor;
  final double? indicatorWeight;
  final double? horizontalPadding;
  final double? verticalPadding;

  late final List<Tab> tabs;

  TourouTabBar({
    Key? key,
    required this.firstTabText,
    required this.secondTabText,
    required this.controller,
    this.labelColor,
    this.unselectedLabelColor,
    this.indicatorWeight,
    this.horizontalPadding,
    this.verticalPadding,
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
      labelColor: labelColor ?? ColorName.textWhite,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      unselectedLabelColor: unselectedLabelColor ?? ColorName.userIdText,
      indicatorColor: labelColor ?? ColorName.textWhite,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: indicatorWeight ?? tabBarIndicatorWeight,
      indicatorPadding: EdgeInsets.symmetric(
        horizontal: horizontalPadding ?? tabBarIndicatorHorizontalPadding,
        vertical: verticalPadding ?? tabBarIndicatorVerticalPadding,
      ),
    );
  }
}
