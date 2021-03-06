/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

// Flutter imports:
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsHowToUseGen {
  const $AssetsHowToUseGen();

  $AssetsHowToUseEnGen get en => const $AssetsHowToUseEnGen();
  $AssetsHowToUseJaGen get ja => const $AssetsHowToUseJaGen();
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/enter_icon.png
  AssetGenImage get enterIcon =>
      const AssetGenImage('assets/images/enter_icon.png');

  /// File path: assets/images/enter_icon_tourou.png
  AssetGenImage get enterIconTourou =>
      const AssetGenImage('assets/images/enter_icon_tourou.png');

  /// File path: assets/images/icon_no_image.png
  AssetGenImage get iconNoImage =>
      const AssetGenImage('assets/images/icon_no_image.png');
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/logo_a.png
  AssetGenImage get logoA => const AssetGenImage('assets/logo/logo_a.png');
}

class $AssetsSignInIconsGen {
  const $AssetsSignInIconsGen();

  /// File path: assets/sign_in_icons/apple_logo.svg
  SvgGenImage get appleLogo =>
      const SvgGenImage('assets/sign_in_icons/apple_logo.svg');

  /// File path: assets/sign_in_icons/google_logo.svg
  SvgGenImage get googleLogo =>
      const SvgGenImage('assets/sign_in_icons/google_logo.svg');
}

class $AssetsSignInIconsForTestGen {
  const $AssetsSignInIconsForTestGen();

  /// File path: assets/sign_in_icons_for_test/apple_test.svg
  SvgGenImage get appleTest =>
      const SvgGenImage('assets/sign_in_icons_for_test/apple_test.svg');

  /// File path: assets/sign_in_icons_for_test/google_test.svg
  SvgGenImage get googleTest =>
      const SvgGenImage('assets/sign_in_icons_for_test/google_test.svg');
}

class $AssetsHowToUseEnGen {
  const $AssetsHowToUseEnGen();

  /// File path: assets/how_to_use/en/how_to_use_en_1.png
  AssetGenImage get howToUseEn1 =>
      const AssetGenImage('assets/how_to_use/en/how_to_use_en_1.png');

  /// File path: assets/how_to_use/en/how_to_use_en_2.png
  AssetGenImage get howToUseEn2 =>
      const AssetGenImage('assets/how_to_use/en/how_to_use_en_2.png');

  /// File path: assets/how_to_use/en/how_to_use_en_3.png
  AssetGenImage get howToUseEn3 =>
      const AssetGenImage('assets/how_to_use/en/how_to_use_en_3.png');

  /// File path: assets/how_to_use/en/how_to_use_en_4.png
  AssetGenImage get howToUseEn4 =>
      const AssetGenImage('assets/how_to_use/en/how_to_use_en_4.png');
}

class $AssetsHowToUseJaGen {
  const $AssetsHowToUseJaGen();

  /// File path: assets/how_to_use/ja/how_to_use_ja_1.png
  AssetGenImage get howToUseJa1 =>
      const AssetGenImage('assets/how_to_use/ja/how_to_use_ja_1.png');

  /// File path: assets/how_to_use/ja/how_to_use_ja_2.png
  AssetGenImage get howToUseJa2 =>
      const AssetGenImage('assets/how_to_use/ja/how_to_use_ja_2.png');

  /// File path: assets/how_to_use/ja/how_to_use_ja_3.png
  AssetGenImage get howToUseJa3 =>
      const AssetGenImage('assets/how_to_use/ja/how_to_use_ja_3.png');

  /// File path: assets/how_to_use/ja/how_to_use_ja_4.png
  AssetGenImage get howToUseJa4 =>
      const AssetGenImage('assets/how_to_use/ja/how_to_use_ja_4.png');
}

class Assets {
  Assets._();

  static const $AssetsHowToUseGen howToUse = $AssetsHowToUseGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
  static const $AssetsSignInIconsGen signInIcons = $AssetsSignInIconsGen();
  static const $AssetsSignInIconsForTestGen signInIconsForTest =
      $AssetsSignInIconsForTestGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
    );
  }

  String get path => _assetName;
}
