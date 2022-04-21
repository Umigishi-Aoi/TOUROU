// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/pages/new_registration_page.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

class TestWidget extends StatelessWidget {
  const TestWidget({
    Key? key,
    required this.platform,
    required this.language,
  }) : super(key: key);

  final TargetPlatform platform;
  final String language;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(platform: platform),
      locale: Locale(language),
      home: const NewRegistrationPage(
        isTest: true,
      ),
    );
  }
}

void main() {
  testGoldens('new_registration_page_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    const size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.iOS,
        language: 'en',
      ),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'new_registration_page_iphone6_iOS_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.iOS,
        language: 'ja',
      ),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'new_registration_page_iphone6_iOS_ja');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.android,
        language: 'en',
      ),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(
      tester,
      'new_registration_page_iphone6_android_en',
    );

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.android,
        language: 'ja',
      ),
      surfaceSize: size6,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(
      tester,
      'new_registration_page_iphone6_android_ja',
    );

    //デバイスの画面サイズ
    const sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.iOS,
        language: 'en',
      ),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'new_registration_page_ipad_iOS_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.iOS,
        language: 'ja',
      ),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'new_registration_page_ipad_iOS_ja');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.android,
        language: 'en',
      ),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'new_registration_page_ipad_android_en');

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(
        platform: TargetPlatform.android,
        language: 'ja',
      ),
      surfaceSize: sizePad,
    );

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, 'new_registration_page_ipad_android_ja');
  });
}
