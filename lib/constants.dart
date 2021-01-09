import 'package:flutter/material.dart';

const double kDoubleEighty = 80.0;
const double kDoubleTEN = 10.0;
const double kDoubleFifteen = 15.0;
const Color kInactiveWidgetColor = Color(0xFF111328);
const Color kPrimaryWidgetColor = Color(0xFF1D1E33);
const Color kBottomContainerColor = Color(0xFFEB1555);
const Color kPrimaryColor = Color(0xFF0A0E21);
const Color kGrey = Color(0xFF8D8E98);
const Color kSliderOverlayColor = Color(0x29EB1555);

enum Result { OVERWEIGHT, NORMAL, UNDERWEIGHT }

const Text normalRangeText = Text('Normal BMI range: ', style: kLableStyle);

const TextStyle kCommentStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.bold,
);

const TextStyle kLableStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
  color: kGrey,
);
const TextStyle kNumberStyle = TextStyle(
  fontWeight: FontWeight.w900,
  fontSize: 50.0,
);
const TextStyle kCalculateButtonStyle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kHeadingStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const TextStyle kResultNumberStyle = TextStyle(
  fontSize: 100.0,
  fontWeight: FontWeight.bold,
);
