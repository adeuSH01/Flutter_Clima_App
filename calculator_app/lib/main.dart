import 'package:flutter/material.dart';
import 'package:calculator_app/screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}


// route means that screen or page
// push = diğer sayfaya git demek, pop = gidilen diğer sayfadan bir öncekine geri dön demek
// routes = aynı sayfadan başka sayfalara gidilmek için kullanılıyor