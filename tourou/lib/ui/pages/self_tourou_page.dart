// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/tourou_test_data.dart';
import '../templates/self_tourou_template.dart';

class SelfTourouPage extends StatelessWidget {
  const SelfTourouPage({
    Key? key,
    required this.isTest,
  }) : super(key: key);

  final bool isTest;

  @override
  Widget build(BuildContext context) {
    return SelfTourouTemplate(
      isTest: isTest,
      newSelfTourous: isTest
          ? TourouTestData().tourouTestData
          : TourouTestData().tourouTestData,
      trendSelfTourous: isTest
          ? TourouTestData().tourouTestData
          : TourouTestData().tourouTestData,
      selfTourouTapFunction: (tourouData) {},
      profileFunction: (tourouData) {},
      tourouImageFunction: (tourouData) {},
      fabFunction: () {},
    );
  }
}
