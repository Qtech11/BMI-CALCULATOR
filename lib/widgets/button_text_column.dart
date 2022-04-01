import 'package:flutter/material.dart';
import '../constants.dart';

class ButtonTextColumn extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const ButtonTextColumn(
      {required this.title,
      required this.value,
      required this.onTap1,
      required this.onTap2});

  final String title;
  final int value;
  final void Function() onTap1;
  final void Function() onTap2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: kLetterTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RoundedIconButton(
              icon: Icons.remove,
              onpressed: onTap2,
            ),
            const SizedBox(
              width: 15,
            ),
            RoundedIconButton(
              icon: Icons.add,
              onpressed: onTap1,
            ),
          ],
        ),
      ],
    );
  }
}

class RoundedIconButton extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const RoundedIconButton({required this.onpressed, required this.icon});
  final void Function() onpressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onpressed,
      child: Icon(
        icon,
        size: 35,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xFF1C2035),
      elevation: 15,
      constraints: const BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
    );
  }
}
