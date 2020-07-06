import 'package:flutter/material.dart';
import 'package:pickmyshoes01/constants.dart';
import 'screens/start_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryBackgroundColor,
        fontFamily: 'DidactGothic',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: StartPage(),
    );
  }
}
