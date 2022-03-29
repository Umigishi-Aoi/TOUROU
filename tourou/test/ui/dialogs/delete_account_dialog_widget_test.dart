// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

// Project imports:
import '../../../lib/l10n/app_localizations.dart';
import '../../../lib/ui/dialogs/delete_account_dialog.dart';

Future<void> loadJapaneseFont() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  final binary = rootBundle.load('assets/fonts/Mplus1-Regular.ttf');
  final loader = FontLoader('Roboto')..addFont(binary);
  await loader.load();
}

Widget TestWidget(String language) {
  return MaterialApp(
    localizationsDelegates: AppLocalizations.localizationsDelegates,
    supportedLocales: AppLocalizations.supportedLocales,
    locale: Locale(language),
    home: Builder(builder: (context) {
      return Scaffold(
        body: Center(
          child: ElevatedButton(
            key: ValueKey('Show Dialog'),
            child: Text('Show Dialog'),
            onPressed: () async {
              await showDialog<void>(
                  context: context,
                  useRootNavigator: false,
                  builder: (context) {
                    return DeleteAccountDialog(
                      yesFunction: () {
                        Navigator.pop(context);
                      },
                      noFunction: () {
                        Navigator.pop(context);
                      },
                    );
                  });
            },
          ),
        ),
      );
    }),
  );
}

const title = 'delete_account_dialog';

void main() {
  testGoldens('${title}_golden_test', (WidgetTester tester) async {
    await loadAppFonts();
    await loadJapaneseFont();

    //デバイスの画面サイズ
    final size6 = Size(375, 667);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('en'), surfaceSize: size6);

    await tester.tap(find.byKey(ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_iphone6_en');

    await tester.tap(find.byKey(ValueKey('Yes Button')));

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('ja'), surfaceSize: size6);

    await tester.tap(find.byKey(ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_iphone6_ja');

    await tester.tap(find.byKey(ValueKey('No Button')));

    //デバイスの画面サイズ
    final sizePad = Size(1024, 1366);

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('en'), surfaceSize: sizePad);

    await tester.tap(find.byKey(ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_ipad_en');

    await tester.tap(find.byKey(ValueKey('Yes Button')));

    //第一引数はどのWidgetをビルドするのか指定、どのサイズにビルドするかがsurfaceSize
    await tester.pumpWidgetBuilder(TestWidget('ja'), surfaceSize: sizePad);

    await tester.tap(find.byKey(ValueKey('Show Dialog')));

    //マスターのスクリーンショットと同じかテストする
    await screenMatchesGolden(tester, '${title}_ipad_ja');

    await tester.tap(find.byKey(ValueKey('No Button')));
  });
}
