import 'package:flutter/material.dart';

class RadioCard extends StatelessWidget {
  const RadioCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 131,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/bottom_mosqe.png'),
          alignment: Alignment.bottomCenter,
        ),
        color: Color(0xffE2BE7F),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Radio Ibrahim Al-Akdar',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: MediaQuery.of(context).size.width * .4),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    // color: Color(0xff202020),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/play_icon.png'),
                ),
              ),
              SizedBox(width: 20),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/images/play_icon.png'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
