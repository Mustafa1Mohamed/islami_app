import 'package:flutter/material.dart';
import 'package:islamy_app/screens/home/UI/quran/sura_details.dart';
import 'package:islamy_app/screens/home/lay_out.dart';
import 'package:islamy_app/screens/introScreens/onboarding_screen.dart';
import 'package:islamy_app/screens/splash_screens/second_splash.dart';
import 'package:islamy_app/screens/splash_screens/splash_screen.dart';

import 'core/services/local_storage.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocalStorage.init();
  runApp( IslamyApp());
}
class IslamyApp extends StatelessWidget {
  const IslamyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.id: (context) => const SplashScreen(),
        SecondSplash.id: (context) => const SecondSplash(),
        OnBoardingScreen.id: (context) => const OnBoardingScreen(),
        LayOut.id: (context) => const LayOut(),
        SuraDetails.id:(context)=>const SuraDetails(),
      },
      initialRoute:SecondSplash.id
    );
  }
}
