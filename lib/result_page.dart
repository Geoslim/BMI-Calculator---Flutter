import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'calculate_button.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.bmiResult,
      @required this.resultText,
      @required this.interpretation});
  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR RESULT',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: TextStyle(
                    fontSize: 50.0,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      resultText,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 100.0,
//                        color: Color(0xFF24D876),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      interpretation,
                      style: TextStyle(
                        fontSize: 22.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CalculateButton(
              text: Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 30.0),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ));
  }
}
