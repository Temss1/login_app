import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(image: AssetImage(tWelcomeScreenImage), height: MediaQuery.of(context).size.height * 0.6,),
            Column(
              children: [
                Text(tWelcomeTitle, style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), ),
                SizedBox(height: 10,),
                Text(tWelcomeSubtitle, style: TextStyle(fontSize: 16), textAlign: TextAlign.center,),
              ],
            ),
            
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: (){}, 
                    style: OutlinedButton.styleFrom (
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tSecondaryColor,
                    ),
                    child: Text(tLogin.toUpperCase()),)
                  ),
                SizedBox(width: 10,),
                Expanded(
                  child: ElevatedButton(
                    onPressed: (){},
                    style: OutlinedButton.styleFrom (
                      side: BorderSide(color: tSecondaryColor),
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      shape: RoundedRectangleBorder(),
                      foregroundColor: tWhiteColor,
                      backgroundColor: tSecondaryColor,
                    ),
                    child: Text(tSignup.toUpperCase())
                    ),
                    
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}