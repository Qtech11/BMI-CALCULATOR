import 'package:flutter/material.dart';
import '../constants.dart';

class IconContainer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const IconContainer({this.icon, required this.text});
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          text,
          style: kLetterTextStyle,
        ),
      ],
    );
  }
}
