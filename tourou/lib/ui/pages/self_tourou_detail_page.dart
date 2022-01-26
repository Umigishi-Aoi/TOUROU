// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/toruou_data.dart';
import '../templates/self_tourou_detail_template.dart';

class SelfTourouDetailPage extends StatelessWidget {
  final TourouData selfTourou;

  const SelfTourouDetailPage({Key? key, required this.selfTourou})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelfTourouDetailTemplate(
      selfTourou: selfTourou,
      profileFunction: (tourouData) {},
      goodButtonFunction: (tourouData) {},
      tourouImageFunction: (tourouData) {},
    );
  }
}
