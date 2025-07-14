import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home/lay_out.dart';
import '../introScreens/onboarding_screen.dart';

class SecondSplash extends StatefulWidget {
  static const String id = '/second_splash';
  const SecondSplash({super.key});

  @override
  State<SecondSplash> createState() => _SecondSplashState();
}

class _SecondSplashState extends State<SecondSplash> {
  @override
  void initState() {
    navigateToNextScreen();
    super.initState();
  }
  void navigateToNextScreen() async {
    final pres = await SharedPreferences.getInstance();
    final onBoardingSeen = pres.getBool('seen') ?? false;
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(
        context,
        onBoardingSeen ? LayOut.id : OnBoardingScreen.id,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset('assets/images/masged.png'),
          ),
          Positioned(
            top: 792,
            left: 125,
            child: Container(
              height: 76,
              width: 180,
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/route.png',
                fit: BoxFit.cover,
                width: 180,
                height: 76,
              ),
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
