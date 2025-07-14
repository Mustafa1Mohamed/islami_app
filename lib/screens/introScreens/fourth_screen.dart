import 'package:flutter/material.dart';

import '../../widgets/body_of_intro_screen.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyOfIntroScreen(
      image: 'assets/images/hands.png',
      title: 'Bearish',
      description: 'Praise the name of your Lord, the most \nHigh',
    );
  }
}
