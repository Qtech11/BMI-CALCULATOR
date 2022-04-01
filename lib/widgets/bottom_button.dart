import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BottomButton({required this.title, required this.onPressed});
  final String title;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.teal,
        height: 70,
        width: double.infinity,
        child: Center(
          child: Text(
            title,
            style: kBottomButtonStyle,
          ),
        ),
      ),
    );
  }
}
