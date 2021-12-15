// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_core/firebase_core.dart';

// Project imports:
import 'firebase_options_prod.dart';
import 'firebase_options_stg.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  const flavor = String.fromEnvironment('FLAVOR');

  switch (flavor) {
    case 'stg':
      await Firebase.initializeApp(
        options: DefaultFirebaseOptionsStg.currentPlatform,
      );
      break;
    case 'prod':
      await Firebase.initializeApp(
        options: DefaultFirebaseOptionsProd.currentPlatform,
      );
      break;
  }

  runApp(const MyApp());
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
                children: const [Text('FLAVOR is $flavor')],
              ),
            )));
  }
}
