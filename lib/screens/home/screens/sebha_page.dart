import 'package:flutter/material.dart';

import '../widgets/custom_header.dart';

class SebhaPage extends StatefulWidget {
  const SebhaPage({super.key});

  @override
  State<SebhaPage> createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> {
  int rotate = 0;
  int counter = 0;
  int turn = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/sebha_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomHeader(),
          SizedBox(height: 16),
          Text(
            'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 16),
          Image.asset('assets/images/sebha_head.png', width: 145, height: 86),
          // Container(
          //   alignment: Alignment.center,
          //   width: 379,
          //   height: 381,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       fit: BoxFit.cover,
          //       image: AssetImage('assets/images/SebhaBody.png'),
          //     ),
          //   ),
          //   child:Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text('سبحان الله',style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 36,
          //         fontWeight: FontWeight.w700,
          //       ),),
          //       Text('30',style: TextStyle(
          //         color: Colors.white,
          //         fontSize: 36,
          //         fontWeight: FontWeight.w700,
          //       ),),
          //     ],
          //   ),
          // ),
          Stack(
            children: [
              Positioned(
                child: RotatedBox(
                  quarterTurns: rotate,
                  child: Image.asset(
                    'assets/images/SebhaBody.png',
                    height: 381,
                    width: 379,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: 145,
                child: GestureDetector(
                  onTap: () {
                    if(turn==0){
                      if(counter==33){
                        turn++;
                        counter=0;
                      }
                    }
                    else if(turn==1){
                      if(counter==33){
                        turn++;
                        counter=0;
                      }
                    }
                    else if(turn==2)
                      {
                        if(counter==34){
                          turn=0;
                          counter=0;
                          rotate=0;
                        }
                      }
                    rotate++;
                    counter++;
                    setState(() {});
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              turn == 0
                                  ? 'سبحان الله'
                                  : turn == 1
                                  ? 'الحمدلله'
                                  : 'الله اكبر',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
