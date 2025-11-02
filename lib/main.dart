import 'package:eslami_app/presentation/screens/home_screen/home_screen.dart';
import 'package:eslami_app/presentation/screens/onboarding_screen/onboarding_screen.dart';
import 'package:eslami_app/presentation/screens/splash_screen/splash_screen1.dart';
import 'package:eslami_app/presentation/screens/splash_screen/splash_screen2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen1.routeName: (context) => const SplashScreen1(),
        SplashScreen2.routeName: (context) => const SplashScreen2(),
        OnboardingScreen.routeName: (context) =>  OnboardingScreen(),
        HomeScreen.routeName: (context) =>  HomeScreen(),
      },
      initialRoute: SplashScreen1.routeName,
    );
  }
}
