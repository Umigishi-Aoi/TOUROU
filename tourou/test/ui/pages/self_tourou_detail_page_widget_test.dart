// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/temp/tourou_test_data.dart';
import '../../../lib/ui/pages/self_tourou_detail_page.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    Key? key,
    required this.language,
  }) : super(key: key);

  final String language;

  @override
  Widget build(BuildContext context) {
    final selfTourou = TourouTestData().tourouTestData[2];
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(language),
      home: SelfTourouDetailPage(selfTourou: selfTourou),
    );
  }
}

void main() {
  testGoldens('self_tourou_detail_page_golden_test',
      (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    const size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'en'),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_detail_page_iphone6_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'ja'),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_detail_page_iphone6_ja');

    //デバイスの画面サイズ
    const sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'en'),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_detail_page_ipad_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'ja'),
      surfaceSize: sizePad,
    );
    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_detail_page_ipad_ja');
  });
}
