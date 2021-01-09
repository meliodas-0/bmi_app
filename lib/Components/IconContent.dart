import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  IconContent({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          this.icon,
          size: kDoubleEighty,
        ),
        SizedBox(
          height: kDoubleTEN,
        ),
        Text(
          this.text,
          style: kLableStyle,
        )
      ],
    );
  }
}
