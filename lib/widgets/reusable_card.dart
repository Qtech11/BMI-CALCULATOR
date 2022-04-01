import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ReusableCard({required this.colour, this.cardChild, this.onPressed});

  final Color colour;
  final Widget? cardChild;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
