// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/pages/sign_in_page.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

Widget TestWidget(TargetPlatform platform, String language) {
  return MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    theme: ThemeData(platform: platform),
    locale: Locale(language),
    home: SignInPage(
      isTest: true,
    ),
  );
}

void main() {
  testGoldens('sign_in_page_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    final size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.iOS, 'en'),
        surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_iphone6_iOS_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.iOS, 'ja'),
        surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_iphone6_iOS_ja');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.android, 'en'),
        surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_iphone6_android_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.android, 'ja'),
        surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_iphone6_android_ja');

    //デバイスの画面サイズ
    final sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.iOS, 'en'),
        surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_ipad_iOS_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.iOS, 'ja'),
        surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_ipad_iOS_ja');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.android, 'en'),
        surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_ipad_android_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget(TargetPlatform.android, 'ja'),
        surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'sign_in_page_ipad_android_ja');
  });
}
