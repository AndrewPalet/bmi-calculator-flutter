import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'package:bmi_calculator/components/bottom_calculate.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text(
                'Your Results',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Normal',
                    style: kResultsTextStyle,
                  ),
                  Text(
                    '18.3',
                    style: kBMITextStyle,
                  ),
                  Text(
                    'Your BMI is low, eat more',
                    style: kBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomCalculate(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CACULATE',
          ),
        ],
      ),
    );
  }
}
