// Flutter imports:
import 'package:flutter/material.dart';
import 'package:tourou/gen/assets.gen.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/ui/atoms/custom_image.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorName.mainBlack,
        appBar: AppBar(),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                CustomImage(path: Assets.logo.logoA.path),
              ],
            ),
          ),
        ));
  }
}
