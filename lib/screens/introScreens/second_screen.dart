import 'package:flutter/material.dart';

import '../../widgets/body_of_intro_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyOfIntroScreen(
      image: "assets/images/masged2.png",
      title: 'Welcome To Islami',
      description: 'We Are Very Excited To Have You In Our Community',
    );
  }
}
