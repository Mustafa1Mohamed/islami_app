import 'package:flutter/material.dart';

class BodyOfIntroScreen extends StatelessWidget {
  final String image;
  final String title;
  final String? description;
  const BodyOfIntroScreen({super.key, required this.image, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(image, height: 415, width: 398),
        SizedBox(height: 30),
        Text(
          title,
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 50,),
        Text(
          description??'',
          style: TextStyle(
            color: Color(0xffE2BE7F),
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10,),
      ],
    );
  }
}
