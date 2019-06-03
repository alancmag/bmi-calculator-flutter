import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottonButton extends StatelessWidget {
  const BottonButton({@required this.buttonTitle, @required this.onTap});

  final String buttonTitle;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottonContainerColour,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottonContainerHeight,
      ),
    );
  }
}
