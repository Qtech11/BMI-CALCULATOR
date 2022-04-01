import 'package:flutter/material.dart';
import '../widgets/icon_column.dart';
import '../widgets/reusable_card.dart';
import '../constants.dart';
import '../widgets/button_text_column.dart';
import '../widgets/bottom_button.dart';
import '../brain/functionality.dart';
import 'result_page.dart';

enum Gender { male, female }
int height = 180;
int weight = 60;
int age = 18;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild:
                        const IconContainer(icon: Icons.male, text: 'MALE'),
                    colour: selectedGender == Gender.male
                        ? kCardColor
                        : kInactiveCardColor,
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild:
                        const IconContainer(icon: Icons.female, text: 'FEMALE'),
                    colour: selectedGender == Gender.female
                        ? kCardColor
                        : kInactiveCardColor,
                    onPressed: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'HEIGHT',
                    style: kLetterTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberTextStyle,
                      ),
                      const Text(
                        'cm',
                        style: kLetterTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.teal,
                      inactiveTrackColor: Colors.teal.shade100,
                      thumbColor: Colors.pink,
                      overlayColor: Colors.pink.withOpacity(0.3),
                      thumbShape: const RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 100,
                      max: 300,
                      onChanged: (double newHeight) {
                        setState(() {
                          height = newHeight.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardChild: ButtonTextColumn(
                      title: 'WEIGHT',
                      value: weight,
                      onTap1: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onTap2: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                    colour: kCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardChild: ButtonTextColumn(
                      title: 'AGE',
                      value: age,
                      onTap1: () {
                        setState(() {
                          age++;
                        });
                      },
                      onTap2: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                    colour: kCardColor,
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE YOUR BMI',
            onPressed: () {
              Functionality calculatorBrain =
                  Functionality(height: height, weight: weight);
              double result = calculatorBrain.calculateBmi();
              calculatorBrain.comment(calculatedBmi: result);
              String status = calculatorBrain.getStatus();
              String range = calculatorBrain.getRange();
              String comment = calculatorBrain.getComment();

              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            result: result,
                            status: status,
                            range: range,
                            comment: comment,
                          )));
            },
          ),
        ],
      ),
    );
  }
}
