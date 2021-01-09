import 'package:bmi_app/constants.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function onPress;

  ReusableCard({@required this.color, this.child, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: this.child,
        margin: EdgeInsets.all(kDoubleFifteen),
        decoration: BoxDecoration(
            color: this.color, borderRadius: BorderRadius.circular(kDoubleTEN)),
      ),
    );
  }
}
