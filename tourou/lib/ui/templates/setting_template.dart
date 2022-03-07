import 'package:flutter/material.dart';
import 'package:tourou/gen/colors.gen.dart';
import 'package:tourou/gen/fonts.gen.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';

class SettingTemplate extends StatelessWidget {

  final void Function() editProfileFunction;

  const SettingTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomElevatedButton(text: , color: ColorName.mainBlack, fontSize: fontSize, fontFamily: FontFamily.mplus1, height: height, width: width, buttonColor: ColorName.tourouBackground, function: editProfileFunction,),
            ],
          ),
        ),
      ),
    );
  }
}
