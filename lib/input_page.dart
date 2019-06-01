import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'top_card_content.dart';
import 'reusable_card.dart';

const bottonContainerHeight = 80.0;
const colorContainer = Color(0xFFEB1555);
const colorCard = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: colorCard,
                      cardChild: TopCardContent(
                        icone: FontAwesomeIcons.male,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: colorCard,
                      cardChild: TopCardContent(
                        icone: FontAwesomeIcons.female,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                colour: colorCard,
                cardChild: Container(),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: colorCard,
                      cardChild: Container(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: colorCard,
                      cardChild: Container(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: colorContainer,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: bottonContainerHeight,
            )
          ],
        ));
  }
}
