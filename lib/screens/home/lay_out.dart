import 'package:flutter/material.dart';

import 'UI/Radio/radio_page.dart';
import 'UI/Sebha/sebha_page.dart';
import 'UI/Time/time_page.dart';
import 'UI/hadith/hadith_page.dart';
import 'UI/quran/quran_page.dart';

class LayOut extends StatefulWidget {
  static const String id = '/home_page';
  const LayOut({super.key});

  @override
  State<LayOut> createState() => _LayOutState();
}

class _LayOutState extends State<LayOut> {
  int currentIndex = 0;
  PageController pageController = PageController();
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  List<Widget> pages = [
    QuranPage(),
    HadithPage(),
    SebhaPage(),
    RadioPage(),
    TimePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/quran_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                // clipBehavior: Clip.none,
                children: pages,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w700,
        ),

        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
          pageController.jumpToPage(index);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xffE2BE7F),
        items: [
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage('assets/images/quran_icn.png')),
            ),
            icon: Image.asset('assets/images/quran_icn.png'),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage('assets/images/hadith_icon.png')),
            ),
            icon: Image.asset('assets/images/hadith_icon.png'),
            label: 'Hadith',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage('assets/images/sebha_icon (2).png')),
            ),
            icon: ImageIcon(AssetImage('assets/images/sebha_icon (2).png')),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage('assets/images/radio_icon.png')),
            ),
            icon: ImageIcon(AssetImage('assets/images/radio_icon.png')),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            activeIcon: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ImageIcon(AssetImage('assets/images/timer_icon.png')),
            ),
            icon: ImageIcon(AssetImage('assets/images/timer_icon.png')),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
