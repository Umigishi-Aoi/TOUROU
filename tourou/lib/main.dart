// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

// Project imports:
import '../../res/constants.dart';
import 'ads/adaptive_banner_ad.dart';
import 'firebase_options_prod.dart';
import 'firebase_options_stg.dart';
import 'tourou.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  switch (makeFlavor(flavor)) {
    case Flavor.stg:
      await Firebase.initializeApp(
        options: DefaultFirebaseOptionsStg.currentPlatform,
      );
      break;
    case Flavor.prod:
      await Firebase.initializeApp(
        options: DefaultFirebaseOptionsProd.currentPlatform,
      );
      break;
    default:
  }

  MobileAds.instance.initialize();

  runApp(const Tourou());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const flavor = String.fromEnvironment('FLAVOR');

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Center(
          child: Column(
            children: const [
              Text('FLAVOR is $flavor'),
              AdaptiveBannerAd(),
            ],
          ),
        ),
      ),
    );
  }
}
