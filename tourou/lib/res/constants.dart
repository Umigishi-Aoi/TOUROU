//atoms settings

// Flutter imports:
import 'package:flutter/services.dart';

const double mainTextFontSize = 24;
const int imageDuration = 1;
const double radiusRatio = 0.2;
const double buttonHeightFontSizeRatio = 0.43;
const double fabIconSize = 48;
const double buttonHeightRatio = 0.06;
const double buttonWidthRatio = 0.8;
const double howToUseTitleFontSize = 28;

//tourou setting
const double tourouWidthRatio = 0.9;
const double tourouProfileImageHeightRatio = 0.05;
const double tourouReportIconSizeRatio = 0.03;
const double tourouUserNameFontSize = 16;
const double tourouContentWidthRatio = 0.8;
const double tourouHorizontalMargin = 16;
const double tourouBorderRadius = 8;
const double tourouVerticalPadding = 16;
const double tourouContentBottomPadding = 8;

const double goodButtonHeightRatio = 0.05;
const double goodButtonWidthRatio = 0.4;
const double goodButtonTextWidthRatio = 0.15;
const double goodNumberFontSizeConstant = 32;

const double goodNumberPadding = 16;
const double selfTourouGoodPadding = 16;

//explanation organism setting
const double explanationTitleHeightRatio = 0.1;
const double explanationTextHeightRatio = 0.7;
const double explanationTextWidthRatio = 0.8;
const double explanationTextButtonHeightRatio = 0.1;
const double titleTextFontSizeConstants = 32;

//tourou tab bar setting
const double tabBarIndicatorWeight = 3;
const double tabBarIndicatorHorizontalPadding = 16;
const double tabBarIndicatorVerticalPadding = 0;

const int initialTabIndex = 0;
const int tabLength = 2;

//title organism setting
const double logoTopMarginRatio = 0.1;
const double logoHeightRatio = 0.1;
const double logoWidthRatio = 0.9;
const double logoBottomMarginRatio = 0.05;
const double additionalTitleFontSizeConstant = 24;
const double titleButtonHeightRatio = 0.35;
const double titleButtonWidthRatio = 0.9;
const double explanationFontSizeConstant = 28;
const double titleTextButtonTopMarginRatio = 0.1;
const double titleTextButtonFontSize = 16;

//google sign in button setting
const double googleSignInButtonHorizontalPadding = 8;
const double googleSignInButtonIconMargin = 24;
const double googleSignInButtonIconSize = 18;

//apple sign in button setting
const double appleSignInButtonMinimumWidth = 140;
const double appleSignInButtonMinimumHeight = 30;
const double appleSignInButtonHorizonalPaddingRatio = 0.08;

//How to use setting
const int howToUsePageCount = 4;
const double howToUseHeightRatio = 0.6;
const double howToUseWidthRatio = 0.9;
const double howToUseIndicatorHeight = 48;
const double howToUseIndicatorMargin = 8;
const double howToUseIndicatorSize = 24;
const double howToUseTitlePadding = 32;
const double howToUseButtonPadding = 16;

//new profile setting page setting
const double newProfileSettingImageTopMarginRatio = 0.1;
const double newProfileSettingImageHeightRatio = 0.2;
const double newProfileSettingFieldPadding = 16;
const double newProfileSettingFieldHeightRatio = 0.1;
const double newProfileSettingFieldFontSizeRatio = 0.3;
const double newProfileSettingButtonTopMarginRatio = 0.15;
const double newProfileSettingButtonMargin = 18;
const int newProfileSettingMaxLine = 1;
const int newProfileSettingIdMaxLength = 8;
const int newProfileSettingNameMaxLength = 16;

//new user registration page setting
const double signInButtonsMarginRatio = 0.1;
const double newRegistrationTextMarginRatio = 0.025;
const double newRegistrationExplanationHorizontalPadding = 32;
const double newRegistrationItemHorizontalPadding = 64;

//sign in page setting
const double signInMarginRatio = 0.2;

const double adaptiveBannerMaximumHeightRatio = 0.15;
const double adaptiveBannerMaximumHeight = 90;
const double fabHeightMargin = 16;

//newtourou setting
TextInputFormatter newTourouFormatter =
    FilteringTextInputFormatter.allow(RegExp(r'{,300}'));
const int newTourouTextFieldMaxLines = 50;
const double newTourouIconHeightRatio = 0.05;
const double newTourouFontSize = 16;
const double newTourouTextFieldHeightRatio = 0.3;
const int newTourouTextFieldMaxLength = 200;
const double newTourouButtonTopMarginRatio = 0.02;

//setting setting
const double settingMarginHeightRatio = 0.05;
const double settingButtonPadding = 8;

//edit Profile setting
const double editProfileDetailFieldHeightRatio = 0.3;
const int editProfileDetailMaxLine = 10;
const int editProfileDetailMaxLength = 200;

//profile page setting
const double profileImageHeightRatio = 0.2;

//disclaimer page setting
const double textPadding = 16;

//language setting page settinng
const double languageSettingTextSwitchWidthRatio = 0.5;

//dialog setting
const double dialogButtonHeightRatio = 0.05;
const double dialogButtonWidthRatio = 0.3;

const flavor = String.fromEnvironment('FLAVOR');

enum Flavor { dev, stg, prod, undefined }

Flavor makeFlavor(String flavor) {
  try {
    return Flavor.values.byName(flavor);
  } on Exception catch (_) {
    return Flavor.undefined;
  }
}

enum SuportedLocale { ja, en }
