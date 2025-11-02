import 'package:eslami_app/presentation/screens/home_screen/home_screen.dart';
import 'package:eslami_app/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import '../../../theme/app_assets.dart';
import '../../../theme/app_colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  late int _currentPage = 0;
  final PageController _controller = PageController();


  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pages = [
    {"image": AppAssets.shape1, "title": "", "desc": "Welcome To Islami App"},
    {
      "image": AppAssets.shape2,
      "title": "Welcome To Islami App",
      "desc": "We Are Very Excited To Have You In Our Community",
    },
    {
      "image": AppAssets.shape3,
      "title": "Reading the Quran",
      "desc": "Read, and your Lord is the Most Generous",
    },
    {
      "image": AppAssets.shape4,
      "title": "Tasbeeh",
      "desc": "Praise the name of your Lord, the Most High",
    },
    {
      "image": AppAssets.shape5,
      "title": "Holy Quran Radio",
      "desc":
      "You can listen to the Holy Quran Radio through the application for free and easily",
    },
  ];
    return Expanded(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(color: AppColors.gray),
            child: Column(
              children: [
                // PageView
                Expanded(
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() => _currentPage = index);
                    },
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Expanded(child: Image.asset(pages[index]["image"]!)),
                          SizedBox(height: 16),

                              Text(
                                textAlign: TextAlign.center,
                                pages[index]["title"]!,
                                style: AppTextStyle.titleLarge,
                              ),

                          SizedBox(height: 16),

                          Text(
                            textAlign: TextAlign.center,
                            pages[index]["desc"]!,
                            style:AppTextStyle.titleLarge,
                          ),
                          SizedBox(height: 30),
                        ],
                      );
                    },
                  ),
                ),


                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      if (_currentPage > 0)
                        TextButton(

                          onPressed: () {
                            _controller.previousPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }, child: Text("Back",style: AppTextStyle.labelLarge,),
                        ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          pages.length,
                              (dotIndex) => Container(
                            margin: const EdgeInsets.symmetric(horizontal: 4),
                            width: _currentPage == dotIndex ? 12 : 8,
                            height: _currentPage == dotIndex ? 12 : 8,
                            decoration: BoxDecoration(
                              color: _currentPage == dotIndex
                                  ? AppColors.gold
                                  : Colors.grey,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),


                      TextButton(
                        child:Text(_currentPage == pages.length ?"Finish":"Next",style: AppTextStyle.labelLarge,),
                        onPressed: () {
                          if (_currentPage < pages.length - 1) {
                            _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            Navigator.pushReplacementNamed(context, HomeScreen.routeName);
                          }
                        },
                      )

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
