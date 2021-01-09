import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function onPress;

  BottomButton({@required this.text, @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(
            text,
            style: kCalculateButtonStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: kDoubleTEN),
        padding: EdgeInsets.only(bottom: kDoubleTEN),
        height: kDoubleEighty,
        width: double.infinity,
      ),
    );
  }
}
