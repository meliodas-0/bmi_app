import 'package:bmi_app/constants.dart';
import 'package:flutter/cupertino.dart';

class BmiBrain {
  final int height;
  final int weight;

  BmiBrain({@required this.height, @required this.weight});

  double _bmi;

  Result _result;

  String calculateBMI() {
    _bmi = weight / (height / 100 * height / 100);
    _result = _bmi >= 25
        ? Result.OVERWEIGHT
        : (_bmi > 18.5 ? Result.NORMAL : Result.UNDERWEIGHT);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_result == Result.OVERWEIGHT)
      return 'OVERWEIGHT';
    else if (_result == Result.NORMAL)
      return 'NORMAL';
    else
      return 'UNDERWEIGHT';
  }

  String getInterpretation() {
    if (_result == Result.OVERWEIGHT)
      return 'You have a higher than a normal body weight. Try to exercise more.';
    else if (_result == Result.NORMAL)
      return 'You have a normal body weight. Good job !';
    else
      return 'You have a lower than normal body weight. You can eat a bit more';
  }
}
