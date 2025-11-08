import 'package:eslami_app/presentation/screens/home_screen/tabs/hadith_tab/hadith_tab.dart';
import 'package:eslami_app/presentation/screens/home_screen/tabs/quran_tab/quran_tab.dart';
import 'package:eslami_app/presentation/screens/home_screen/tabs/radio_tab/radio_tab.dart';
import 'package:eslami_app/presentation/screens/home_screen/tabs/sebha_tab/sebha_tab.dart';
import 'package:eslami_app/presentation/screens/home_screen/tabs/time_tab/time_tab.dart';
import 'package:eslami_app/theme/app_assets.dart';
import 'package:eslami_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    QuranTab(),
    HadithTab(),
    SebhaTab(),
    RadioTab(),
    TimeTab(),
  ];
  List<String> tabsBK = [
    AppAssets.quranBg,
    AppAssets.hadethBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.moraBg,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(tabsBK[selectedIndex]),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.black, AppColors.black.withAlpha(70)],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: tabs[selectedIndex],
          bottomNavigationBar: SizedBox(
            height: 120,
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                });
              },
              type: BottomNavigationBarType.fixed,
              backgroundColor: AppColors.gold,
              selectedItemColor: AppColors.white,
              unselectedItemColor: AppColors.black,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              iconSize: 35,
              items: [
                BottomNavigationBarItem(
                  icon: CustomBottomNavigationBarItem(
                    imagePath: AppAssets.quranIc,
                    isSelected: selectedIndex == 0,
                  ),
                  label: "Quran",
                ),
                BottomNavigationBarItem(
                  icon: CustomBottomNavigationBarItem(
                    imagePath: AppAssets.hadithIc,
                    isSelected: selectedIndex == 1,
                  ),
                  label: "hadith",
                ),
                BottomNavigationBarItem(
                  icon: CustomBottomNavigationBarItem(
                    imagePath: AppAssets.sebhaIc,
                    isSelected: selectedIndex == 2,
                  ),
                  label: "sebha",
                ),
                BottomNavigationBarItem(
                  icon: CustomBottomNavigationBarItem(
                    imagePath: AppAssets.radioIc,
                    isSelected: selectedIndex == 3,
                  ),
                  label: "radio",
                ),
                BottomNavigationBarItem(
                  icon: CustomBottomNavigationBarItem(
                    imagePath: AppAssets.timeIc,
                    isSelected: selectedIndex == 4,
                  ),
                  label: "time",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.imagePath,
    required this.isSelected,
  });

  final String imagePath;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 200),
      transitionBuilder: (child, animation) =>
          ScaleTransition(scale: animation, child: child),
      child: isSelected
          ? Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              decoration: BoxDecoration(
                color: AppColors.black.withAlpha(50),
                borderRadius: BorderRadius.circular(100),
              ),
              child: ImageIcon(AssetImage(imagePath)),
            )
          : ImageIcon(AssetImage(imagePath)),
    );
  }
}
