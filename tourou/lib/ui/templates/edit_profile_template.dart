// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../atoms/custom_text.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/image_button.dart';
import '../molecules/text_text_field.dart';

class EditProfileTemplate extends StatelessWidget {
  const EditProfileTemplate({
    Key? key,
    required this.backFunction,
    required this.imageFunction,
    required this.userNameController,
    required this.detailController,
    required this.saveFunction,
  }) : super(key: key);

  final void Function() backFunction;
  final void Function() imageFunction;

  final TextEditingController userNameController;
  final TextEditingController detailController;

  final void Function() saveFunction;

  @override
  Widget build(BuildContext context) {
    final displayHeight = MediaQuery.of(context).size.height;
    final displayWidth = MediaQuery.of(context).size.width;
    final fieldHeight = displayHeight * newProfileSettingFieldHeightRatio;
    final fieldFontSize = fieldHeight * newProfileSettingFieldFontSizeRatio;
    final fieldWidth = displayWidth * buttonWidthRatio;
    final detailFieldHeight = displayHeight * editProfileDetailFieldHeightRatio;
    final buttonHeight = displayHeight * buttonHeightRatio;
    final buttonWidth = displayWidth * buttonWidthRatio;
    final fontSize = buttonHeight * buttonHeightFontSizeRatio;
    return Scaffold(
      backgroundColor: ColorName.mainBlack,
      appBar: AppBar(
        backgroundColor: ColorName.mainBlack,
        title: CustomText(
          text: AppLocalizations.of(context)!.editProfile,
          color: ColorName.textWhite,
          fontSize: newTourouFontSize,
          fontFamily: FontFamily.mplus1,
        ),
        leading: Center(
          child: CustomText(
            text: AppLocalizations.of(context)!.back,
            color: ColorName.switchAccentColor,
            fontSize: newTourouFontSize,
            fontFamily: FontFamily.mplus1,
            function: backFunction,
          ),
        ),
        centerTitle: true,
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
                padding: const EdgeInsets.symmetric(
                  horizontal: newProfileSettingFieldPadding,
                ),
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
                  textInputFormatters: const [],
                  autofocus: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: newProfileSettingFieldPadding,
                ),
                child: TextTextField(
                  text: AppLocalizations.of(context)!.detail,
                  titleTextColor: ColorName.textWhite,
                  titleFontSize: fieldFontSize,
                  fontFamily: FontFamily.mplus1,
                  hint: AppLocalizations.of(context)!.userNameHint,
                  controller: detailController,
                  height: detailFieldHeight,
                  width: fieldWidth,
                  maxLines: editProfileDetailMaxLine,
                  maxLength: editProfileDetailMaxLength,
                  fieldFontSize: fieldFontSize,
                  fieldTextColor: ColorName.mainBlack,
                  fillColor: ColorName.tourouBackground,
                  borderColor: ColorName.textWhite,
                  counterColor: ColorName.textWhite,
                  textInputFormatters: const [],
                  autofocus: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(newProfileSettingFieldPadding),
                child: CustomElevatedButton(
                  text: AppLocalizations.of(context)!.save,
                  color: ColorName.mainBlack,
                  fontSize: fontSize,
                  fontFamily: FontFamily.mplus1,
                  height: buttonHeight,
                  width: buttonWidth,
                  buttonColor: ColorName.tourouBackground,
                  function: saveFunction,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
