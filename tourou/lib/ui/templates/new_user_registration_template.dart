// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../gen/fonts.gen.dart';
import '../../l10n/app_localizations.dart';
import '../../res/constants.dart';
import '../molecules/custom_elevated_button.dart';
import '../molecules/image_button.dart';
import '../molecules/text_textField.dart';

class NewUserRegistrationTemplate extends StatelessWidget {
  final void Function() imageFunction;

  final TextEditingController userIdController;

  final TextEditingController userNameController;

  final void Function() buttonFunction;

  const NewUserRegistrationTemplate(
      {Key? key,
      required this.imageFunction,
      required this.userIdController,
      required this.userNameController,
      required this.buttonFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double displayHeight = MediaQuery.of(context).size.height;
    final double displayWidth = MediaQuery.of(context).size.width;
    final double fieldHeight =
        displayHeight * newUserRegistrationFieldHeightRatio;
    final double fieldFontSize =
        fieldHeight * newUserRegistrationFieldFontSizeRatio;
    final double fieldWidth = displayWidth * buttonWidthRatio;
    return Scaffold(
        backgroundColor: ColorName.mainBlack,
        body: SafeArea(
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height:
                        displayHeight * newUserRegistrationImageTopMarginRatio,
                  ),
                  ImageButton(
                    firstImagePath: Assets.images.iconNoImage.path,
                    height: displayHeight * newUserRegistrationImageHeightRatio,
                    function: imageFunction,
                    fit: BoxFit.cover,
                    isCircle: true,
                  ),
                  Padding(
                    padding: EdgeInsets.all(newUserRegistrationFieldPadding),
                    child: TextTextField(
                        text: AppLocalizations.of(context)!.userId,
                        titleTextColor: ColorName.textWhite,
                        titleFontSize: fieldFontSize,
                        fontFamily: FontFamily.mplus1,
                        hint: AppLocalizations.of(context)!.userIdHint,
                        controller: userIdController,
                        height: fieldHeight,
                        width: fieldWidth,
                        minLines: newUserRegistrationMinLine,
                        fieldFontSize: fieldFontSize,
                        fieldTextColor: ColorName.mainBlack,
                        fillColor: ColorName.tourouBackground,
                        borderColor: ColorName.textWhite,
                        textInputFormatters: [
                          FilteringTextInputFormatter.allow(
                              RegExp(r'^[A-Za-z0–9]{4,8}')),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.all(newUserRegistrationFieldPadding),
                    child: TextTextField(
                      text: AppLocalizations.of(context)!.userName,
                      titleTextColor: ColorName.textWhite,
                      titleFontSize: fieldFontSize,
                      fontFamily: FontFamily.mplus1,
                      hint: AppLocalizations.of(context)!.userNameHint,
                      controller: userNameController,
                      height: fieldHeight,
                      width: fieldWidth,
                      minLines: newUserRegistrationMinLine,
                      fieldFontSize: fieldFontSize,
                      fieldTextColor: ColorName.mainBlack,
                      fillColor: ColorName.tourouBackground,
                      borderColor: ColorName.textWhite,
                      textInputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'{,16}')),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: displayHeight * newUserRegistrationButtonTopMarginRatio,
              ),
              Padding(
                padding: EdgeInsets.all(newUserRegistrationButtonMargin),
                child: CustomElevatedButton(
                  text: AppLocalizations.of(context)!.registration,
                  color: ColorName.mainBlack,
                  fontSize: displayHeight *
                      buttonHeightRatio *
                      buttonHeightFontSizeRatio,
                  fontFamily: FontFamily.mplus1,
                  height: displayHeight * buttonHeightRatio,
                  width: displayWidth * buttonWidthRatio,
                  buttonColor: ColorName.tourouBackground,
                  function: buttonFunction,
                ),
              )
            ],
          )),
        ));
  }
}
