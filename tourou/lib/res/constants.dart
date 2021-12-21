//atoms settings
const double mainTextFontSize = 24;
const int imageDuration = 1;
const double radiusRatio = 0.2;
const double buttonHeightTextRatio = 0.43;
const double fabIconSize = 24;

//tourou setting
const double tourouWidthRatio = 0.9;
const double tourouProfileImageHeightRatio = 0.05;
const double tourouReportIconSizeRatio = 0.01;
const double tourouUserNameFontSize = 32;
const double tourouContentWidthRatio = 0.8;

const double goodButtonHeightRatio = 0.05;
const double goodButtonWidthRatio = 0.4;
const double goodButtonMarginRatio = 0.05;
const double goodNumberFontSizeConstant = 32;

const double goodNumberPadding = 16;

//explanation organism setting
const double explanationTitleHeightRatio = 0.1;
const double explanationTextHeightRatio = 0.7;
const double explanationTextWidthRatio = 0.8;
const double explanationTextButtonHeightRatio = 0.1;
const double titleTextFontSizeConstants = 32;

//tourou tab bar setting
const double tabBarIndicatorWeight = 1.0;
const double tabBarIndicatorHorizontalPadding = 16.0;
const double tabBarIndicatorVerticalPadding = 8.0;

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

const flavor = String.fromEnvironment('FLAVOR');

enum Flavor { dev, stg, prod, undefined }

Flavor makeFlavor(String flavor) {
  try {
    return Flavor.values.byName(flavor);
  } catch (e) {
    return Flavor.undefined;
  }
}
