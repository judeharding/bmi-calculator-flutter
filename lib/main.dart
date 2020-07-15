import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

//the main.dart file contains the theming, custom colurs and fonts

//each page afterwards needs the material.dart file inported

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        accentColor: Colors.purple,
        scaffoldBackgroundColor: Color(0xFF0A0E21),
//        textTheme: TextTheme(
//          bodyText1: TextStyle(color: Colors.yellow),
//        ),
      ),
      home: InputPage(),
    );
  }
}
