import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy_app/screens/home/UI/hadith/widgets/hadith_item_widget.dart';

import '../../../../models/hadith_model.dart';
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
    if (hadithList.isEmpty) {
      loadHadithData();
    }
    return Column(
      children: [
        CarouselSlider(
          items: hadithList.map((e) {
            return HadithItemWidget(hadithModel: e);
          }).toList(),
          options: CarouselOptions(
            height: 618,
            autoPlay: false,
            reverse: true,
            enlargeCenterPage: true,
            viewportFraction: .8,
            animateToClosest: true,
            // scrollDirection: Axis.horizontal,
            initialPage: 0,
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

  List<HadithModel> hadithList = [];

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString(
        'assets/files/combined_hadiths_separated.txt');
    List<String> allHadith = content.split('#');

    for (var element in allHadith) {
      String singleHadith = element.trim();
      int indexOfTitle = singleHadith.indexOf('\n');
      String hadithTitle = singleHadith.substring(0, indexOfTitle);
      String hadith = singleHadith.substring(indexOfTitle + 1);

      setState(() {
        hadithList.add(HadithModel(title: hadithTitle, content: hadith));
      });
    }
  }
}
