import 'package:eslami_app/presentation/screens/home_screen/tabs/home_tab/home_tab.dart';
import 'package:eslami_app/theme/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeTab(),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: AppColors.gold,
          selectedItemColor: AppColors.white,
          unselectedItemColor: AppColors.gray,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: "Quran",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_rounded),
              label: "Hadith",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              label: "sebha",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radio_outlined),
              label: "radio",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart),
              label: "Time",
            ),
      ]),
    );
  }
}
