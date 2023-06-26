import 'package:flutter/material.dart';

import 'input_page.dart';

void main() => runApp(const BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   colorScheme: ColorScheme.fromSwatch().copyWith(
      //     primary: const Color(0xFF0A0A21),
      //   ),
      //   textTheme: const TextTheme(
      //       bodyMedium: TextStyle(
      //         color: Colors.white,
      //       )),
      //   scaffoldBackgroundColor: const Color(0xFF0A0A21),
      //
      // ),
      theme: ThemeData.dark().copyWith(
          colorScheme: ColorScheme.fromSwatch().copyWith(

            primary: const Color(0xFF0A0A21),
          ),
        scaffoldBackgroundColor: const Color(0xFF0A0A21),
      ),

      home: const InputPage(),
    );
  }
}
