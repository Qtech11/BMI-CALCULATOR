import 'package:bmi_app/constants.dart';
import 'package:bmi_app/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import '../widgets/bottom_button.dart';

class ResultPage extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ResultPage(
      {required this.result,
      required this.status,
      required this.range,
      required this.comment});

  final double result;
  final String status;
  final String range;
  final String comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w400),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 7,
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      status,
                      style: kStatusStyle,
                    ),
                  ),
                  Center(
                    child: Text(
                      result.toStringAsFixed(1),
                      style: kBmiValueStyle,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '$status BMI range:',
                        style: kLetterTextStyle,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        range,
                        style: kCommentTextStyle,
                      )
                    ],
                  ),
                  Text(
                    comment,
                    textAlign: TextAlign.center,
                    style: kCommentTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE YOUR BMI',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
