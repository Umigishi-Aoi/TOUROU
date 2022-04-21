// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/dialogs/logout_dialog.dart';

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
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(language),
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                key: const ValueKey('Show Dialog'),
                child: const Text('Show Dialog'),
                onPressed: () async {
                  await showDialog<void>(
                    context: context,
                    useRootNavigator: false,
                    builder: (context) {
                      return LogoutDialog(
                        yesFunction: () {
                          Navigator.pop(context);
                        },
                        noFunction: () {
                          Navigator.pop(context);
                        },
                      );
                    },
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

const title = 'logout_dialog';

void main() {
  testGoldens('${title}_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    const size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'en'),
      surfaceSize: size6,
    );

    await tester.tap(find.byKey(const ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_iphone6_en');

    await tester.tap(find.byKey(const ValueKey('Yes Button')));

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'ja'),
      surfaceSize: size6,
    );

    await tester.tap(find.byKey(const ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_iphone6_ja');

    await tester.tap(find.byKey(const ValueKey('No Button')));

    //デバイスの画面サイズ
    const sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'en'),
      surfaceSize: sizePad,
    );

    await tester.tap(find.byKey(const ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_ipad_en');

    await tester.tap(find.byKey(const ValueKey('Yes Button')));

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(
      const TestWidget(language: 'ja'),
      surfaceSize: sizePad,
    );

    await tester.tap(find.byKey(const ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_ipad_ja');

    await tester.tap(find.byKey(const ValueKey('No Button')));
  });
}
