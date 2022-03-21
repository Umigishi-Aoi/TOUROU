import 'package:flutter/material.dart';
import 'package:tourou/ui/molecules/custom_elevated_button.dart';
import 'package:tourou/ui/molecules/text_textField.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';
import '../molecules/image_button.dart';

class EditProfileTemplate extends StatelessWidget {
  final void Function() backFunction;
  final void Function() imageFunction;

  final TextEditingController userNameController; 

  const EditProfileTemplate({
    Key? key,
    required this.backFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double fieldHeight =
        displayHeight * newProfileSettingFieldHeightRatio;
    final double fieldFontSize =
        fieldHeight * newProfileSettingFieldFontSizeRatio;
    final double fieldWidth = displayWidth * buttonWidthRatio;
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
            SizedBox(
              height: displayHeight * newProfileSettingImageTopMarginRatio,
            ),
            ImageButton(
              firstImagePath: Assets.images.iconNoImage.path,
              height: displayHeight * newProfileSettingImageHeightRatio,
              function: imageFunction,
              fit: BoxFit.cover,
              isCircle: true,
            ),
            Padding(
              padding: EdgeInsets.all(newProfileSettingFieldPadding),
              child: TextTextField(
                text: AppLocalizations.of(context)!.userName,
                titleTextColor: ColorName.textWhite,
                titleFontSize: fieldFontSize,
                fontFamily: FontFamily.mplus1,
                hint: AppLocalizations.of(context)!.userNameHint,
                controller: userNameController,
                height: fieldHeight,
                width: fieldWidth,
                maxLines: newProfileSettingMaxLine,
                maxLength: newProfileSettingNameMaxLength,
                fieldFontSize: fieldFontSize,
                fieldTextColor: ColorName.mainBlack,
                fillColor: ColorName.tourouBackground,
                borderColor: ColorName.textWhite,
                counterColor: ColorName.textWhite,
                textInputFormatters: [],
                autofocus: false,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(newProfileSettingFieldPadding),
              child: CustomElevatedButton(
                  text: text,
                  color: color,
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                  height: height,
                  width: width,
                  buttonColor: buttonColor,
                  function: function),
            )
          ],
        )),
      ),
    );
  }
}
