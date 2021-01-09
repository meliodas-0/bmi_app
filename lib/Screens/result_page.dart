import 'package:bmi_app/Components/ReusableCard.dart';
import 'package:bmi_app/Components/bottomButton.dart';
import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.result,
      @required this.bmiValue,
      @required this.resultText});

  final String result;
  final String bmiValue;
  final String normalBmiRange = '18.5 - 25 kg/m2';
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR '),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  'Your Result',
                  style: kHeadingStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: result == 'OVERWEIGHT'
                            ? Colors.red
                            : (result == 'NORMAL'
                                ? Color(0xFF24D876)
                                : Colors.yellow),
//  Colors.greenAccent
                      ),
                    ),
                    Text(
                      bmiValue,
                      style: kResultNumberStyle,
                    ),
                    Column(
                      children: [
                        normalRangeText,
                        Text(
                          normalBmiRange,
                          style: kCommentStyle,
                        ),
                      ],
                    ),
                    Center(
                      child: Text(
                        resultText,
                        style: kCommentStyle,
                        softWrap: true,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
                color: kPrimaryWidgetColor,
              ),
            ),
            BottomButton(
              text: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
