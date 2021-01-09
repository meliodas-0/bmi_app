import 'package:bmi_app/Components/IconContent.dart';
import 'package:bmi_app/Components/ReusableCard.dart';
import 'package:bmi_app/Components/bottomButton.dart';
import 'package:bmi_app/Components/roundIcon.dart';
import 'package:bmi_app/Screens/BmiBrain.dart';
import 'package:bmi_app/Screens/result_page.dart';
import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  MALE,
  FEMALE,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.MALE;
  int height = 180;
  int weight = 60;
  int age = 21;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.MALE;
                        });
                      },
                      color: selectedGender == Gender.MALE
                          ? kPrimaryWidgetColor
                          : kInactiveWidgetColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.FEMALE;
                        });
                      },
                      color: selectedGender == Gender.MALE
                          ? kInactiveWidgetColor
                          : kPrimaryWidgetColor,
                      child: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kPrimaryWidgetColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style: kLableStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: [
                              Text(
                                height.toString(),
                                style: kNumberStyle,
                              ),
                              Text(
                                'cm',
                                style: kLableStyle,
                              )
                            ],
                          ),
                          SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              inactiveTrackColor: kGrey,
                              thumbColor: kBottomContainerColor,
                              overlayColor: kSliderOverlayColor,
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 36),
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              trackHeight: 1.0,
                            ),
                            child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged: (double value) {
                                setState(
                                  () {
                                    height = value.round();
                                  },
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kPrimaryWidgetColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLableStyle,
                          ),
                          Text(
                            weight.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: Icons.arrow_downward,
                                onPress: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: Icons.arrow_upward,
                                onPress: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      color: kPrimaryWidgetColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLableStyle,
                          ),
                          Text(
                            age.toString(),
                            style: kNumberStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIconButton(
                                icon: Icons.arrow_downward,
                                onPress: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              RoundIconButton(
                                icon: Icons.arrow_upward,
                                onPress: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomButton(
              text: 'CALCULATE',
              onPress: () {
                BmiBrain bmiBrain = BmiBrain(height: height, weight: weight);

                String bmiValue = bmiBrain.calculateBMI();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            result: bmiBrain.getResult(),
                            bmiValue: bmiValue,
                            resultText: bmiBrain.getInterpretation())));
              },
            )
          ],
        ),
      ),
    );
  }
}
