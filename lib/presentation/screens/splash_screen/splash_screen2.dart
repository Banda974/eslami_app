import 'package:eslami_app/theme/app_assets.dart';
import 'package:eslami_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../onboarding_screen/onboarding_screen.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  static const String routeName = '/splash2';

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>  OnboardingScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color:AppColors.gray ,
        ),
        Positioned(
          top: MediaQuery.sizeOf(context).height * .4,
          left: MediaQuery.sizeOf(context).width * .27,
          child: Image.asset(AppAssets.objects),
        ),
        Positioned(
          right: MediaQuery.of(context).size.width * .21,
          bottom: MediaQuery.of(context).size.height * .03,
          child: Image.asset(AppAssets.routeLogo),
        ),
      ],
    );
  }
}
