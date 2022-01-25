// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:tourou/temp/toruou_data.dart';
import 'package:tourou/temp/tourou_test_data.dart';
import 'package:tourou/ui/pages/world_tourou_detail_page.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

Widget TestWidget(String language) {
  TourouData worldTourou = TourouTestData().tourouTestData[3];
  return MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    locale: Locale(language),
    home: WorldTourouDetailPage(worldTourou: worldTourou),
  );
}

void main() {
  testGoldens('world_tourou_detail_page_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    final size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('en'), surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_detail_iphone6_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('ja'), surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_detail_iphone6_ja');

    //デバイスの画面サイズ
    final sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('en'), surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_detail_page_ipad_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('ja'), surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_detail_page_ipad_ja');
  });
}