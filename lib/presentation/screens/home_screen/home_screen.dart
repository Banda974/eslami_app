import 'package:eslami_app/theme/app_assets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.quranBg,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withValues(alpha: .23),
                Colors.black.withValues(alpha: .5),
                Colors.black.withValues(alpha: .23),
              ],
            ),
          ),
        ),

        SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset(AppAssets.mosque2)],
          ),
        ),

      ],
    );
  }
}
