

import 'dart:math';

class BmiCalculate {
  late int height;
  late int weight;
  // late int age;
  // String? category;
   double bmi = 0.0;
   //String? health;

  BmiCalculate({required this.height,required this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String bmiResult(){
    if (bmi < 18.5) {
     return  "Underweight";
    } else if (bmi < 25) {
      return "Normal weight";
    } else if (bmi < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }
  String bmiHealth(){
    if (bmi < 18.5) {
      return 'Suggestions to gain weight \n Consume a nutrient-rich diet with balanced portions \n  Eat frequent meals and snacks throughout the day';

    } else if (bmi < 25) {
      return 'Suggestions to maintain a healthy weight';

    } else if (bmi < 30) {
      return 'Suggestions to lose weight \n Adopt a calorie-controlled diet with a focus on nutritious foods';

    } else {
      return ' Suggestions for managing obesity \n Consult with a healthcare professional for a comprehensive weight management plan';
    }
  }


}
