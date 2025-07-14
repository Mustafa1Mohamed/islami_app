import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 291,
            height: 151,
            child: Image.asset(
              'assets/images/mosqe2.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 132.5,
          child: Text(
            'Islami',
            style: TextStyle(
              fontFamily: 'Kamali',
              fontSize: 64,
              fontWeight: FontWeight.w400,
              foreground: Paint()
                ..shader = LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffC0A37C), Color(0xffFFD482)],
                ).createShader(Rect.fromLTWH(70, 0, 10, 10)),
            ),
          ),
        ),
      ],
    );
  }
}
