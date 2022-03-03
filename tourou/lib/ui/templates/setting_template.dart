import 'package:flutter/material.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';

class SettingTemplate extends StatelessWidget {
  const SettingTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomElevatedButton(text: , color: color, fontSize: fontSize, fontFamily: fontFamily, height: height, width: width, buttonColor: buttonColor, function: function)
            ],
          ),
        ),
      ),
    );
  }
}
