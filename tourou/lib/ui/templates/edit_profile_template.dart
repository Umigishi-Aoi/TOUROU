import 'package:flutter/material.dart';
import 'package:tourou/ui/atoms/custom_image.dart';
import 'package:tourou/ui/atoms/custom_textfield.dart';

import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';

class EditProfileTemplate extends StatelessWidget {
  
  final void Function() backFunction;

  const EditProfileTemplate({
    Key? key,
    required this.backFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorName.mainBlack,
        leading: Center(
          child: CustomText(
            text: AppLocalizations.of(context)!.back,
            color: ColorName.switchAccentColor,
            fontSize: newTourouFontSize,
            fontFamily: FontFamily.mplus1,
            function: backFunction,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              CustomImage(fit: , height: null, path: '',),
              CustomTextField(hint: hint, controller: controller, height: height, width: width, maxLines: maxLines, maxLength: maxLength, fontSize: fontSize, textColor: textColor, fontFamily: fontFamily, fillColor: fillColor, borderColor: borderColor, counterColor: counterColor, textInputFormatters: textInputFormatters, autofocus: autofocus),
              CustomTextField(hint: hint, controller: controller, height: height, width: width, maxLines: maxLines, maxLength: maxLength, fontSize: fontSize, textColor: textColor, fontFamily: fontFamily, fillColor: fillColor, borderColor: borderColor, counterColor: counterColor, textInputFormatters: textInputFormatters, autofocus: autofocus),
            ],
          )
        ),
      ),
    );
  }
}
