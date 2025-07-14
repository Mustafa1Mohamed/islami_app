import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/models/hadith_model.dart';

import '../widgets/custom_header.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({super.key, required this.hadithModel});
  final HadithModel hadithModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/hadith_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          CustomHeader(),

          Expanded(child: HadithCarousel(hadithModel: hadithModel,)),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class HadithCarousel extends StatefulWidget {
  const HadithCarousel({super.key,required this.hadithModel});
final HadithModel hadithModel;
  @override
  State<HadithCarousel> createState() => _HadithCarouselState();
}

class _HadithCarouselState extends State<HadithCarousel> {
  final List<String> hadiths = [
    'عن أمير المؤمنين أبي حفص عمر بن الخطاب رضي الله عنه، قال : سمعت رسول الله صلى الله عليه وسلم يقول: ( إنما الأعمال بالنيات، وإنما لكل امرئ ما نوى...)',
    'عن أبي عبد الرحمن عبد الله بن مسعود رضي الله عنه قال: حدثنا رسول الله صلى الله عليه وسلم وهو الصادق المصدوق: (إن أحدكم يُجمع خلقه في بطن أمه أربعين يوما...)',
    'عن أبي عبد الله النعمان بن بشير رضي الله عنهما قال: سمعت رسول الله صلى الله عليه وسلم يقول: (إن الحلال بيّن وإن الحرام بيّن...)',
  ];
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: hadiths.length,
          itemBuilder: (context, index, realIdx) {
            return Container(
              width: double.infinity,
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
                          hadiths[index],
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
          },
          options: CarouselOptions(
            height: 618,
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: .8,
            animateToClosest: true,

            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
              });
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
