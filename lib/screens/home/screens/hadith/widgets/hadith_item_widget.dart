import 'package:flutter/material.dart';

class HadithItemWidget extends StatelessWidget {
  const HadithItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      // height: 618,
      decoration: BoxDecoration(
        color: Color(0xffE2BE7F),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          opacity: .1,
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
            child: Column(
              children: [
                Text(
                  'الحد يث الأول',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'hadiths[index]',
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
