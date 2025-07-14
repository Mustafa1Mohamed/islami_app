import 'package:flutter/material.dart';

import '../../widgets/body_of_intro_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyOfIntroScreen(
      image: "assets/images/qura'n.png",
      title: 'Reading the Quran',
      description: 'Read, and your Lord is the Most Generous',
    );
  }
}
