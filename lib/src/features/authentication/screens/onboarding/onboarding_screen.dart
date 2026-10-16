import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/onboarding/onboarding_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatefulWidget {
  OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = LiquidController();

    int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
            liquidController : controller,
            onPageChangeCallback: (int activePageIndex) {
              setState(() {
                currentPage = activePageIndex;
              });
            },
            pages: [
              
              OnboardingWidgets(
                image: tOnboardingPage1Image,
                title: tOnboardingTitle1,
                subTitle: tOnboardingSubtitle1,
                counterText: tOnboardingCounter1,
                bgColor: tOnboardingPage1Color,
              ),
              OnboardingWidgets(
                image: tOnboardingPage2Image,
                title: tOnboardingTitle2,
                subTitle: tOnboardingSubtitle2,
                counterText: tOnboardingCounter2,
                bgColor: tOnboardingPage2Color,
              ),
              OnboardingWidgets(
                image: tOnboardingPage3Image,
                title: tOnboardingTitle3,
                subTitle: tOnboardingSubtitle3,
                counterText: tOnboardingCounter3,
                bgColor: tOnboardingPage3Color,
              ),
            ],
          ),
          Positioned(
            bottom: 60,
            child: OutlinedButton(
              onPressed: () {
                // Navigator.pushNamed(context, '/WelcomeScreen()');
                int nextPage = controller.currentPage + 1;
                controller.animateToPage(page: nextPage);
                
              },
              style: OutlinedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                foregroundColor: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: tDarkColor,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
            top: 50,
            right: 20,
            child: TextButton(
              onPressed:() {
                controller.jumpToPage(page: 2);
              },
              child: Text("Skip", style: TextStyle(color: Colors.grey, fontSize: 16),),
            )
          ),
          Positioned(
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: currentPage, 
              count: 3,
              effect: const WormEffect(
                activeDotColor: Color(0xff272727),
                dotHeight: 5.0,
              ),
            )),
        ],
      ),
    );
  }
}