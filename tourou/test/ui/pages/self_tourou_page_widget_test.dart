// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:file/file.dart';
import 'package:file/local.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:platform/platform.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/pages/self_tourou_page.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

Future<void> _loadIconFont() async {
  const FileSystem fs = LocalFileSystem();
  const Platform platform = LocalPlatform();
  final flutterRoot = fs.directory(platform.environment['FLUTTER_ROOT']);

  final iconFont = flutterRoot.childFile(
    fs.path.join(
      'bin',
      'cache',
      'artifacts',
      'material_fonts',
      'MaterialIcons-Regular.otf',
    ),
  );

  final bytes =
      Future<ByteData>.value(iconFont.readAsBytesSync().buffer.asByteData());

  await (FontLoader('MaterialIcons')..addFont(bytes)).load();
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    Key? key,
    required this.language,
  }) : super(key: key);

  final String language;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(language),
      home: const SelfTourouPage(
        isTest: true,
      ),
    );
  }
}

void main() {
  testGoldens('self_tourou_page_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    await _loadIconFont();

    //デバイスの画面サイズ
    const size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'en'),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_page_iphone6_en');

    //下にスワイプできることの確認テスト
    await tester.fling(find.byType(ListView), const Offset(0, -250), 300);

    await screenMatchesGolden(tester, 'self_tourou_page_iphone6_en_fling_y');

    //右にスワイプしてタブ切り替えできることの確認テスト
    await tester.fling(find.byType(TabBarView), const Offset(-250, 0), 300);

    await screenMatchesGolden(tester, 'self_tourou_page_iphone6_en_fling_x');

    //タブをタップして切り替えできることの確認テスト
    await tester.tap(find.byKey(const ValueKey('firstTab')));

    await screenMatchesGolden(tester, 'self_tourou_page_iphone6_en_firstTab');

    //タブをタップして切り替えできることの確認テスト
    await tester.tap(find.byKey(const ValueKey('secondTab')));

    await screenMatchesGolden(tester, 'self_tourou_page_iphone6_en_secondTab');

    await tester.tap(find.byKey(const ValueKey('firstTab')));

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'ja'),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_page_iphone6_ja');

    //デバイスの画面サイズ
    const sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'en'),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_page_ipad_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'ja'),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'self_tourou_page_ipad_ja');
  });
}
