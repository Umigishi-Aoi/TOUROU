// Flutter imports:

import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:platform/platform.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/pages/world_tourou_page.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

Future<void> _loadIconFont() async {
  const FileSystem fs = LocalFileSystem();
  const Platform platform = LocalPlatform();
  final Directory flutterRoot = fs.directory(platform.environment['FLUTTER_ROOT']);

  final File iconFont = flutterRoot.childFile(
    fs.path.join(
      'bin',
      'cache',
      'artifacts',
      'material_fonts',
      'MaterialIcons-Regular.otf',
    ),
  );

  final Future<ByteData> bytes = Future<ByteData>.value(
      iconFont.readAsBytesSync()
          .buffer
          .asByteData()
  );

  await (FontLoader('MaterialIcons')..addFont(bytes)).load();
}

Widget TestWidget(String language) {
  return MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    locale: Locale(language),
    home: WorldTourouPage(
      isTest: true,
    ),
  );
}

void main() {
  testGoldens('world_tourou_page_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    await _loadIconFont;

    //デバイスの画面サイズ
    final size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('en'), surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_page_iphone6_en');

    //下にスワイプできることの確認テスト
    await tester.fling(find.byType(ListView), Offset(0.0, -250.0), 300);

    await screenMatchesGolden(tester, 'world_tourou_page_iphone6_en_fling_y');

    //右にスワイプしてタブ切り替えできることの確認テスト
    await tester.fling(find.byType(TabBarView), Offset(-250.0, 0.0), 300);

    await screenMatchesGolden(tester, 'world_tourou_page_iphone6_en_fling_x');

    //タブをタップして切り替えできることの確認テスト
    await tester.tap(find.byKey(ValueKey('firstTab')));

    await screenMatchesGolden(tester, 'world_tourou_page_iphone6_en_firstTab');

    //タブをタップして切り替えできることの確認テスト
    await tester.tap(find.byKey(ValueKey('secondTab')));

    await screenMatchesGolden(tester, 'world_tourou_page_iphone6_en_secondTab');

    await tester.tap(find.byKey(ValueKey('firstTab')));

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('ja'), surfaceSize: size6);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_page_iphone6_ja');

    //デバイスの画面サイズ
    final sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('en'), surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_page_ipad_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('ja'), surfaceSize: sizePad);

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'world_tourou_page_ipad_ja');
  });
}
