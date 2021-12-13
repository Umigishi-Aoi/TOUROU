import 'package:flutter/material.dart';

void main() {
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
