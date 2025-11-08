import 'package:eslami_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/app_assets.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Image.asset(AppAssets.mosque2)
          ],)
        ],
      ),
    );
  }
}
