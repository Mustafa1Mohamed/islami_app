import 'package:flutter/material.dart';
import 'package:islamy_app/screens/home/UI/Radio/widgets/radio_card.dart';
import 'package:islamy_app/screens/home/widgets/custom_header.dart';

class RadioPage extends StatefulWidget {
  const RadioPage({super.key});

  @override
  State<RadioPage> createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  PageController pageController = PageController(initialPage: 0);
  bool currentPage = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/radio_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomHeader(),
            SizedBox(height: 20),
            Container(
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff202020).withOpacity(.5),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentPage = !currentPage;
                          currentPage
                              ? pageController.animateToPage(
                                  1,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.linear,
                                )
                              : pageController.animateToPage(
                                  0,
                                  duration: Duration(milliseconds: 500),
                                  curve: Curves.linear,
                                );
                        });
                      },
                      child: Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: currentPage
                              ? Color(0xff202020).withOpacity(.5)
                              : Color(0xffE2BE7F),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Radio',
                          style: TextStyle(
                            fontWeight: currentPage
                                ? FontWeight.w400
                                : FontWeight.w700,
                            fontSize: 16,
                            color: currentPage ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          currentPage = !currentPage;
                          currentPage
                              ? pageController.animateToPage(
                                  1,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut,
                                )
                              : pageController.animateToPage(
                                  0,
                                  duration: Duration(seconds: 1),
                                  curve: Curves.easeInOut,
                                );
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color: currentPage
                              ? Color(0xffE2BE7F)
                              : Color(0xff202020).withOpacity(.5),

                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          'Reciters',
                          style: TextStyle(
                            fontWeight: currentPage
                                ? FontWeight.w700
                                : FontWeight.w400,
                            fontSize: 16,
                            color: currentPage ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: PageView(
                controller: pageController,
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        RadioCard(),
                        SizedBox(height: 10),
                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        RadioCard(),
                        SizedBox(height: 10),
                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),

                        RadioCard(),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
                onPageChanged: (index) {
                  setState(() {
                    currentPage
                        ? pageController.animateToPage(
                            1,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          )
                        : pageController.animateToPage(
                            0,
                            duration: Duration(seconds: 1),
                            curve: Curves.easeInOut,
                          );
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
