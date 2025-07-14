import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/first_screen.png', height: 415, width: 398),
        SizedBox(height: 150),
        Text(
          'Welcome To Islmi App',
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
