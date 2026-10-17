import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/features/authentication/screens/login/login_form_widget.dart';
import 'package:login_app/src/features/authentication/screens/login/login_footer_widget.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(tDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(image: AssetImage(tWelcomeScreenImage), height: MediaQuery.of(context).size.height * 0.2,),
                Text(tLoginTitle, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                Text(tLoginSubTitle, style: TextStyle(fontSize: 17), textAlign: TextAlign.center,),
                
                SizedBox(height: 30,),

                //section 2
                LoginForm(),   
                SizedBox(height: 10,), 
                LoginFooter(),
               
              ]
            )
          ),
        ),
      ),
    );
  }
}

