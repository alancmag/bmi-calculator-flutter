import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class TopCardContent extends StatelessWidget {
  final IconData icone;
  final String text;

  TopCardContent({@required this.icone, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icone,
          size: 66,
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
