import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/widgets/calculate_recalculate_button.dart';
import 'package:bmi_calculator/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String? bmiResultText;
  String? bmiResultNumber;
  String? interpretation;

  ResultPage({this.bmiResultText, this.bmiResultNumber, this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: SafeArea(
        child: Center(
            child: Column(children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kNumberTextSyle.copyWith(
                    fontWeight: FontWeight.bold, fontSize: 40),
              ),
            ),
          ),
          Expanded(
              flex: 9,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      bmiResultText!,
                      style: kResultTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      bmiResultNumber!,
                      style: kBmiTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      interpretation!,
                      style: kBodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              )),
          CalculateRecalculateButton(
              buttonText: 'RE-CALCULATE',
              onPress: () {
                Navigator.pop(context);
              })
        ])),
      ),
    );
  }
}
