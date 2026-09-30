import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset(tWelcomeScreenImage),
            Text(tWelcomeTitle),
            Text(tWelcomeSubtitle),
            Row(
              children: [
                OutlinedButton(onPressed: (){}, child: Text(tLogin),),
                ElevatedButton(onPressed: (){}, child: Text(tSignup)),
              ],
            )
          ],
        ),
      ),
    );
  }
}