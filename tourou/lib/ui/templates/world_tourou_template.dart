import 'package:flutter/material.dart';
import 'package:tourou/ui/atoms/tourou_tab_bar.dart';
import 'package:tourou/ui/organisms/world_tourou_list.dart';

import '../../ads/adaptive_banner_ad.dart';

class WorldTourouTemplate extends StatelessWidget {
  final bool isTest;

  const WorldTourouTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              TourouTabBar(
                firstTabText: firstTabText,
                secondTabText: secondTabText,
                controller: controller,
                labelColor: labelColor,
                unselectedLabelColor: unselectedLabelColor,
                indicatorWeight: indicatorWeight,
                horizontalPadding: horizontalPadding,
                verticalPadding: verticalPadding,),
              Expanded(
                child: TabBarView(
                  children: [
                    WorldTourouList(),
                    WorldTourouList(),
                  ],
                ),
              ),
              AdaptiveBannerAd()
            ],
          ),
        ),
      ),
    )
  }
}
