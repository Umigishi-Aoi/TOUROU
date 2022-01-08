// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/pages/how_to_use_page.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

void main() {
  testGoldens('how_to_use_page_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    final size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('en'),
          home: HowToUsePage(),
        ),
        surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'how_to_use_page_iphone6_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('ja'),
          home: HowToUsePage(),
        ),
        surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'how_to_use_page_iphone6_ja');

    //デバイスの画面サイズ
    final sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('en'),
          home: HowToUsePage(),
        ),
        surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'how_to_use_page_ipad_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: Locale('ja'),
          home: HowToUsePage(),
        ),
        surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'how_to_use_page_ipad_ja');
  });
}
