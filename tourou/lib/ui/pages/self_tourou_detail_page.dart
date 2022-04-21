// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/tourou_test_data.dart';
import '../templates/self_tourou_detail_template.dart';

class SelfTourouDetailPage extends StatelessWidget {
  const SelfTourouDetailPage({
    Key? key,
    required this.tourouId,
  }) : super(key: key);

  final String tourouId;

  @override
  Widget build(BuildContext context) {
    final tourouTestData = TourouTestData().tourouTestData;
    final selfTourou =
        tourouTestData.firstWhere((tourouData) => tourouData.id == tourouId);
    return SelfTourouDetailTemplate(
      selfTourou: selfTourou,
      profileFunction: (tourouData) {},
      goodButtonFunction: (tourouData) {},
      tourouImageFunction: (tourouData) {},
      backFunction: () {},
    );
  }
}
