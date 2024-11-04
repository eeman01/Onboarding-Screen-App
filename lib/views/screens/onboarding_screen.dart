import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:untitled/views/screens/home_page.dart';
import 'package:untitled/views/screens/screen1.dart';
import 'package:untitled/views/screens/screen2.dart';
import 'package:untitled/views/screens/screen3.dart';
import 'package:untitled/views/screens/screen4.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  // page controller
  PageController pageController = PageController();
  String buttonText = 'Skip';
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              currentPageIndex = index;
              if (index == 3) {
                buttonText = 'Finish';
              } else {
                buttonText = 'Skip';
              }
              setState(() {});
            },
            children: const [
              Screen1(),
              Screen2(),
              Screen3(),
              Screen4(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                SmoothPageIndicator(
                  controller: pageController,
                  count: 4,
                ),
                currentPageIndex == 3
                    ? const SizedBox(width: 10)
                    : GestureDetector(
                        onTap: () {
                          pageController.nextPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
