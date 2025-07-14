import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:islamy_app/screens/home/screens/hadith/widgets/hadith_item_widget.dart';

import '../../widgets/custom_header.dart';

class HadithPage extends StatelessWidget {
  const HadithPage({super.key});

  // final HadithModel hadithModel;
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

          Expanded(child: HadithCarousel()),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class HadithCarousel extends StatefulWidget {
  const HadithCarousel({super.key});

// final HadithModel hadithModel;
  @override
  State<HadithCarousel> createState() => _HadithCarouselState();
}

class _HadithCarouselState extends State<HadithCarousel> {
  final CarouselController _controller = CarouselController();
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(

          items: [
            HadithItemWidget(),
            HadithItemWidget(),
            HadithItemWidget(),
          ],
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
