import 'package:flutter/material.dart';
import 'package:tourou/temp/toruou_data.dart';
import 'package:tourou/ui/templates/world_tourou_detail_template.dart';

class WorldTourouDetailPage extends StatelessWidget {
  final TourouData worldTourou;

  const WorldTourouDetailPage({Key? key, required this.worldTourou})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WorldTourouDetailTemplate(
      worldTourou: worldTourou,
      reportFunction: (tourouData) {},
      profileFunction: (tourouData) {},
      goodButtonFunction: (tourouData) {},
      tourouImageFunction: (tourouData) {},
    );
  }
}
