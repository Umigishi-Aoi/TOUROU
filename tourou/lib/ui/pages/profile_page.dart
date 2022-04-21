// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../temp/toruou_data.dart';
import '../templates/profile_template.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
    required this.isTest,
  }) : super(key: key);

  final bool isTest;

  @override
  Widget build(BuildContext context) {
    return ProfileTemplate(
      tourouData: TourouData.profile(),
      isTest: isTest,
      backFunction: () {},
    );
  }
}
