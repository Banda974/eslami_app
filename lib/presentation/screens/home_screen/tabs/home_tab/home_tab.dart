import 'package:flutter/material.dart';

import '../../../../../theme/app_assets.dart';
import '../../../../../theme/app_colors.dart';
import '../../../../../theme/app_text_style.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppAssets.quranBg,
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withValues(alpha: 0.7),
                Colors.black.withValues(alpha: 0.5),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset(AppAssets.mosque2)],
                ),
                const SizedBox(height: 16),
                FilledButton(
                  style: ButtonStyle(
                    backgroundColor: const WidgetStatePropertyAll(
                      AppColors.gray,
                    ),
                    fixedSize: const WidgetStatePropertyAll(
                      Size(double.infinity, 60),
                    ),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SizedBox(child: Image.asset(AppAssets.quranLogo)),
                      const SizedBox(width: 8),
                      Text("Sura Name", style: AppTextStyle.titleLarge),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Most Recently",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: AppColors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(children: [

                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
