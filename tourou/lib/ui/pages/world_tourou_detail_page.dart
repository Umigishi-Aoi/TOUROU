// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/tourou_test_data.dart';
import '../templates/world_tourou_detail_template.dart';

class WorldTourouDetailPage extends StatelessWidget {
  final String tourouId;

  const WorldTourouDetailPage({Key? key, required this.tourouId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tourouTestData = TourouTestData().tourouTestData;
    final worldTourou =
        tourouTestData.firstWhere((tourouData) => tourouData.id == tourouId);
    return WorldTourouDetailTemplate(
      worldTourou: worldTourou,
      reportFunction: (tourouData) {},
      profileFunction: (tourouData) {},
      goodButtonFunction: (tourouData) {},
      tourouImageFunction: (tourouData) {},
      backFunction: () {},
    );
  }
}
