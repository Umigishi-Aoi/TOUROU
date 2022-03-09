import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';

import '../../res/constants.dart';

class SettingTemplate extends StatelessWidget {

  final void Function() editProfileFunction;

  const SettingTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double width = displayWidth * buttonWidthRatio;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomElevatedButton(
                text: ,
                color: ColorName.mainBlack,
                fontSize: fontSize,
                fontFamily: FontFamily.mplus1,
                height: height,
                width: width,
                buttonColor: ColorName.tourouBackground,
                function: editProfileFunction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
