import 'package:eslami_app/presentation/screens/splash_screen/splash_screen2.dart';
import 'package:eslami_app/theme/app_assets.dart';
import 'package:flutter/material.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  static const String routeName = "/splash1";

  @override
  State<SplashScreen1> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SplashScreen2()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.backGround,
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(right: 0, child: Image.asset(AppAssets.glow)),
        Positioned(
          top: MediaQuery.of(context).size.height * .1,
          left: MediaQuery.of(context).size.width * .16,
          child: Image.asset(AppAssets.mosque),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .3,
          child: Image.asset(AppAssets.shapeLift),
        ),
        Positioned(
          right: 0,
          bottom: MediaQuery.of(context).size.height * .3,
          child: Image.asset(AppAssets.shapeRight),
        ),
        Positioned(
          left: MediaQuery.sizeOf(context).width * .26,
          bottom: MediaQuery.of(context).size.height * .35,
          child: Image.asset(AppAssets.islamLogo, scale: 1.9),
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
