const double mainTextFontSize = 24;
const int imageDuration = 1;
const double radiusRatio = 0.2;
const double buttonHeightTextRatio = 0.43;
const double fabIconSize = 24;

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

const double explanationTitleHeightRatio = 0.1;
const double explanationTextHeightRatio = 0.7;
const double explanationTextWidthRatio = 0.8;
const double explanationTextButtonHeightRatio = 0.1;

const double tabBarIndicatorWeight = 1.0;
const double tabBarIndicatorHorizontalPadding = 16.0;
const double tabBarIndicatorVerticalPadding = 8.0;

const flavor = String.fromEnvironment('FLAVOR');

enum Flavor { dev, stg, prod, undefined }

Flavor makeFlavor(String flavor) {
  try {
    return Flavor.values.byName(flavor);
  } catch (e) {
    return Flavor.undefined;
  }
}
