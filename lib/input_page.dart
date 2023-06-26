import 'package:app_testing/show_bmi.dart';
import 'package:flutter/material.dart';
import 'components/bmi_calculate.dart';
import 'constants/icon_content_dart.dart';
import 'components/reuseable_card_dart.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants/constants.dart';
import 'components/round_icon_button.dart';

enum Gender { male, female, empty }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // static Color maleCardColor = inactiveCardColor;
  // static const Color femaleCardColor = inactiveCardColor;

  // static const Color maleActive = activeCardColor;
  // static const Color femaleActive = activeCardColor;
  //

  // gender 1 == male and gender 2 == female
  // void updateColour(int gender){
  //   if(gender == 1){
  //     if(maleCardColor == inactiveCardColor){
  //       maleCardColor = activeCardColor;
  //     }
  //     else{
  //       maleCardColor = inactiveCardColor;
  //     }
  //   }
  //   else if(gender == 2){
  //     if(femaleCardColor == inactiveCardColor){
  //
  //     }
  //     else{
  //       femaleCardColor;
  //     }
  //   }
  // }

  late Gender selectedGender = Gender.empty;
  int height = 180;
  int weight = 60;
  int age = 25;

  // void weightCalculate(int state) {
  //   setState(() {
  //     if (state == 1) {
  //       weight++;
  //     } else if (state == 2) {
  //       if (weight > 0) {
  //         weight--;
  //       }
  //     }
  //   });}
  //
  // void ageCalculate(int state) {
  //   setState(() {
  //     if (state == 1) {
  //       age++;
  //     } else if (state == 2) {
  //       if (age > 0) {
  //         age--;
  //       }
  //     }
  //   });}
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kactiveCardColor
                        : kinactiveCardColor,
                    cardChild: const IconContent(
                        icon: FontAwesomeIcons.mars, label: 'MALE'),
                  ),
                ),
                Expanded(
                    child: ResuableCard(
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colour: selectedGender == Gender.female
                      ? kactiveCardColor
                      : kinactiveCardColor,
                  cardChild: const IconContent(
                      icon: FontAwesomeIcons.venus, label: 'FEMALE'),
                )),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                      colour: kactiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'HEIGHT',
                            style: textStyleData,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(height.toString(), style: numberTextStyle),
                              const Text(
                                'Cm',
                                style: textStyleData,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              thumbColor: const Color(0xFFEB1555),
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: const Color(0xFF8D8E98),
                              thumbShape: const RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape: const RoundSliderOverlayShape(
                                  overlayRadius: 30.0),
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double newValue) {
                                setState(() {
                                  height = newValue.round();
                                });
                              },
                            ),
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'WEIGHT',
                          style: textStyleData,
                        ),
                        Text(
                          weight.toString(),
                          style: numberTextStyle,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                                buttonPress:(){

                                   // weightCalculate(1);
                                  setState(() {
                                    weight++;
                                  });

                                }
                            ),
                            const SizedBox(
                              width:10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                                buttonPress:(){
                                   //  weightCalculate(2);
                                  setState(() {
                                    weight--;
                                  });
                                }
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                 Expanded(
                  child: ResuableCard(
                    colour: kactiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'AGE',
                          style: textStyleData,
                        ),
                        Text(
                          age.toString(),
                          style: numberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                buttonPress:(){

                                 // ageCalculate(1);
                                  setState(() {
                                    age++;
                                  });
                                }
                            ),
                            const SizedBox(
                              width:10.0,
                            ),
                            RoundIconButton(
                                icon: FontAwesomeIcons.minus,
                                buttonPress:(){
                                 // ageCalculate(2);
                                  setState(() {
                                    age--;
                                  });
                                }
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: (){
              BmiCalculate showBmi = BmiCalculate(height: height,weight: weight);
          //   print(height);
              print(showBmi.calculateBMI());
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> ShowBmi(bmi: showBmi.calculateBMI(), category:showBmi.bmiResult(), health: showBmi.bmiHealth(),)));
            //  print(showBmi.result());
            },
            child: Container(
              alignment: Alignment.center,
              color: kcontainerColor,
              margin: const EdgeInsets.only(top: 15.0),
              width: double.infinity, // It takes the full width of the app
              height: kbottomContainerHeight,
              child: const Text('Calculate',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

