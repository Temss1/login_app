import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';


// ignore: must_be_immutable
class OnboardingWidgets extends StatelessWidget {

  String image;
  String title;
  String subTitle;
  String counterText;
  Color bgColor;

    OnboardingWidgets({super.key,
  required this.image,
  required this.title,
  required this.subTitle,
  required this.counterText,
  required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      padding: EdgeInsets.all(tDefaultSize),
      color: bgColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(image: AssetImage(image), height: MediaQuery.of(context).size.height * 0.4,),
          Column(
            children: [
              Text(title, style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              Text(subTitle, style:TextStyle(fontSize: 20), textAlign: TextAlign.center,),
            ]
          ),
          Text(counterText)
        ],
      ),
    ),
    );
  }
}