import 'package:flutter/material.dart';
import 'screen_pages/first_page.dart';

void main() {
  runApp(const BMIcalculator());
}

class BMIcalculator extends StatelessWidget {
  const BMIcalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          color: Color(0xFF090C22),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
          ),
        ),
        scaffoldBackgroundColor: const Color(0xFF090C22),
      ),
      home: const FirstPage(),
    );
  }
}
