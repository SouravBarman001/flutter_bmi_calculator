import 'package:flutter/material.dart';

// import 'components/bmi_calculate.dart';
import 'constants/constants.dart';


class ShowBmi extends StatelessWidget {
  const ShowBmi({super.key, required this.bmi, required this.category, required this.health});
  final String bmi;
  final String category;
  final String health;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(

          primary: const Color(0xFF0A0A21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0A21),
      ),

      home: SafeArea(
        child: Scaffold(

          body: Container(
            margin: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 30.0),
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: kinactiveCardColor,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 20.0,
                ),
                const Text('Result',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Container(

                    margin: const EdgeInsets.only(top: 30),
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: kactiveCardColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(

                      children: [

                        const SizedBox(
                          height: 60.0,
                        ),
                        Text(
                          bmi,
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 60.0,
                          ),
                        ),
                        const SizedBox(
                          height: 80.0,
                        ),

                        Text(category.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 50.0,
                          ),
                        ),
                        const SizedBox(
                          height: 60.0,
                        ),
                        Text(health.toString(),
                          style: const TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 20.0,
                              color: Colors.tealAccent
                          ),
                          textAlign: TextAlign.center,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
