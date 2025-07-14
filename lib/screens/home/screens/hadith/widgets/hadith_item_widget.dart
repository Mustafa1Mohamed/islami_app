import 'package:flutter/material.dart';

import '../../../../../models/hadith_model.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({super.key, required this.hadithModel});

  final HadithModel hadithModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xffE2BE7F),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          opacity: .25,
          image: AssetImage('assets/images/hadith_card_background.png'),
          fit: BoxFit.contain,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 10,
            child: Image.asset(
              'assets/images/left_corner.png',
              width: 93,
              height: 100,
            ),
          ),
          Positioned(
            top: 10,
            left: 10,
            child: RotatedBox(
              quarterTurns: 3,
              child: Image.asset(
                'assets/images/left_corner.png',
                width: 93,
                height: 100,
              ),
            ),
          ),
          Positioned(
            left: 20,
            right: 20,
            top: 40,
            child: SizedBox(
              width: double.infinity,
              height: 500,
              child: ListView(
                children: [
                  Text(
                    hadithModel.title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Text(
                    hadithModel.content,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,

            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/bottom_mosqe.png',
                fit: BoxFit.cover,
                width: 330,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
