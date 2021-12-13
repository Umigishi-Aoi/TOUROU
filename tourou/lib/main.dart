import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options_prod.dart';
import 'firebase_options_stg.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  var flavor = const String.fromEnvironment('FLAVOR');

  switch(flavor){
    case "stg":
      await Firebase.initializeApp(
        options: DefaultFirebaseOptionsStg.currentPlatform,
      );
      break;
    case "prod":
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
        appBar: AppBar(title: Text("test"),),
        body: Center(
          child: Container(
            child: Column(
              children: [
                Text("FLAVOR is $flavor")
              ],
            )
          ),
        )
      )
    );
  }
}
