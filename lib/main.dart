import 'package:flutter/material.dart';

import 'Screens/inputPage.dart';
import 'constants.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.dark().copyWith(
      primaryColor: kPrimaryColor,
      scaffoldBackgroundColor: kPrimaryColor,
    ),
    home: InputPage(),
  ));
}
