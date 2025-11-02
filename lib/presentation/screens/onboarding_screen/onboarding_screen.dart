import 'package:eslami_app/presentation/screens/onboarding_screen/onboarding_page.dart';
import 'package:eslami_app/theme/app_assets.dart';
import 'package:eslami_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  static const String routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: AppColors.gray,
          child: SafeArea(
            child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(AppAssets.mosque2),
                  SizedBox(height: 35),

                  OnboardingPage(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
