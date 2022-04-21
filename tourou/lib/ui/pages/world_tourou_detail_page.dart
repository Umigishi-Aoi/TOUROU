// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/toruou_data.dart';
import '../templates/world_tourou_detail_template.dart';

class WorldTourouDetailPage extends StatelessWidget {
  const WorldTourouDetailPage({
    Key? key,
    required this.worldTourou,
  }) : super(key: key);

  final TourouData worldTourou;

  @override
  Widget build(BuildContext context) {
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
