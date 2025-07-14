import 'package:flutter/material.dart';
import 'package:islamy_app/widgets/body_of_intro_screen.dart';

class FifthScreen extends StatelessWidget {
  const FifthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BodyOfIntroScreen(
      image: 'assets/images/mic.png',
      title: 'Holy Quran Radio',
      description: 'You can listen to the Holy Quran Radio through the application for free and easily',
    );
  }
}
