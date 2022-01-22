// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/tourou_test_data.dart';
import '../templates/world_tourou_template.dart';

class WorldTourouPage extends StatelessWidget {
  final bool isTest;

  const WorldTourouPage({Key? key, required this.isTest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WorldTourouTemplate(
      isTest: isTest,
      newWorldTourous: isTest
          ? TourouTestData().tourouTestData
          : TourouTestData().tourouTestData,
      trendWorldTourous: isTest
          ? TourouTestData().tourouTestData
          : TourouTestData().tourouTestData,
      worldTourouTapFunction: (tourouData) {},
      reportFunction: (tourouData) {},
      profileFunction: (tourouData) {},
      goodButtonFunction: (tourouData) {},
      tourouImageFunction: (tourouData) {},
    );
  }
}
