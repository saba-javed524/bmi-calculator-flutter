import 'package:bmi_calculator/input_page.dart';
import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0a0d22),
        primaryColor: const Color(0xFF0a0d22),
      ),
      // home: const InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        'result': (context) => ResultPage(),
      },
    );
  }
}
