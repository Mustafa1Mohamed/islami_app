import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/screens/splash_screens/second_splash.dart';

class SplashScreen extends StatefulWidget {
  static const String id = '/splash_screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, SecondSplash.id);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/back_ground.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 57,
            left: 69,
            child: Image.asset(
              'assets/images/mosqe.png',
              width: 291,
              height: 157,
            ),
          ),
          Positioned(
            left: 310,
            child: Image.asset(
              'assets/images/Glow.png',
              width: 88,
              height: 313,
            ),
          ),
          Positioned(
            top: 214,
            child: Image.asset(
              'assets/images/left_shape.png',
              width: 87,
              height: 187,
            ),
          ),
          Positioned(
            top: 341,
            left: 127,
            child: Image.asset(
              'assets/images/masged.png',
              width: 173.72,
              height: 154.88,
            ),
          ),
          Positioned(
            top: 488,
            left: 148,
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
          Positioned(
            top: 604,
            left: 321,
            child: Image.asset(
              'assets/images/right_shape.png',
              width: 101,
              height: 216,
            ),
          ),
          Positioned(
            top: 792,
            left: 125,
            child: SizedBox(
              width: 180,
              height: 76,
              child: Image.asset('assets/images/route.png', fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 862,
            left: 93,
            child: Text(
              'Supervised by Mohamed Nabil',
              style: GoogleFonts.poppins(
                color: Color(0xffDAB98D),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
