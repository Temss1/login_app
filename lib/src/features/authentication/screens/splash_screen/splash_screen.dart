import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/screens/welcome/welcome_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  bool animate = false ;
  


  @override
  void initState() {
    super.initState();
    StartAnimation();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: animate ? 0 : -30,
            left: animate ? 0 : -30,
              child: Container(
                width: 70,
                height: 100,
                color: tPrimaryColor,
              ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            top: 90,
            left: animate ? tDefaultSize : -80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(tAppName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  Text(tAppTagLine,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ]
              ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 1600),
            bottom: 100,
            height: 500,
            width: MediaQuery.of(context).size.width,
            child: Image(image: AssetImage(tSplashImage)),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: tPrimaryColor,
              ),
            )
          )
        ]
      )
    );
  }

  // ignore: non_constant_identifier_names
  Future StartAnimation() async{
    await Future.delayed(Duration(milliseconds: 500));
    setState(() {
      animate = true;
    });
    await Future.delayed(Duration(milliseconds: 5000));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}