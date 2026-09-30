import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/features/authentication/models/model_onboarding.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children:[
          LiquidSwipe(
            pages:[
              // OnBoardingPage(size: size),
              Container(
                color: tOnboardingPage2Color,
                child: Column(
                  children: [
                    Image(image: AssetImage(tOnboardingPage2Image), height: size.height * 0.5,)
                  ],
                )
              ),
              Container(
                color: tOnboardingPage3Color,
                child: Column(
                  children: [
                    Image(image: AssetImage(tOnboardingPage3Image),)
                  ],
                )
              ),
            ]
          ),
        ]
      )
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  
  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: tOnboardingPage1Color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(tOnboardingPage1Image), height: model.size,),
          Column(
            children: [
              Text(model.title, style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              Text(model.subTitle, style:TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            ]
          ),
          Text(model.counterText,)
        ],
      ),
    );
  }
}