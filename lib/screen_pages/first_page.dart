import 'package:bmi_app/constants.dart';
import 'package:bmi_app/screen_pages/input_page.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'BMI',
                  style: kLargeTextStyle,
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'CALCULATOR',
                  style: kLargeTextStyle,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Expanded(
                flex: 10,
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: const Text(
                    'Body mass index (BMI) is a measure of body fat based on height and weight that applies to adult men and women.\n'
                    '\n'
                    'Note: Your Weight should in Kilogram(KG) and your Height in centimeters(CM)',
                    style: kCommentTextStyle,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InputPage()));
                },
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.teal,
                  ),
                  width: 161,
                  height: 51,
                  child: const Center(
                    child: Text(
                      'Next >>',
                      style: kCommentTextStyle,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
