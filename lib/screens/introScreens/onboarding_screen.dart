import 'package:flutter/material.dart';
import 'package:islamy_app/screens/introScreens/second_screen.dart';
import 'package:islamy_app/screens/introScreens/third_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../home/lay_out.dart';
import 'fifth_screen.dart';
import 'first_screen.dart';
import 'fourth_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String id = '/first_screen';
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pageController = PageController();
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff202020),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
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
            ),
            SizedBox(height: 50),
            SizedBox(
              height: 600,
              width: double.infinity,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                children: [
                  FirstScreen(),
                  SecondScreen(),
                  ThirdScreen(),
                  FourthScreen(),
                  FifthScreen(),
                ],
              ),
            ),
            SizedBox(height: 42),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: currentIndex != 0,
                    child: GestureDetector(
                      onTap: () {
                        pageController.previousPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      },
                      child: Text(
                        'Back',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffE2BE7F),
                        ),
                      ),
                    ),
                  ),
                  SmoothPageIndicator(

                    controller: pageController,
                    count: 5,
                    effect: ExpandingDotsEffect(
                      activeDotColor: Color(0xffE2BE7F),
                      dotHeight: 10,
                      dotWidth: 10,
                      spacing: 10,
                      expansionFactor: 2,
                    ),
                    onDotClicked: (index) => pageController.animateToPage(
                      index,
                      duration: Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    ),
                    
                  ),
                  currentIndex == 4 ?
                  GestureDetector(
                    onTap: () async{
                      final pres=await SharedPreferences.getInstance();
                      pres.setBool('seen', true);
                      if(!mounted)return;
                      Navigator.pushReplacementNamed(context, LayOut.id);
                    },
                    child: Text(
                      'Finish',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffE2BE7F),
                      ),
                    ),
                  ):
                  GestureDetector(
                    onTap: () {
                      pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffE2BE7F),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
