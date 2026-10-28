import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
// import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/otp_screen.dart';

class ForgetPasswordMail extends StatelessWidget {
  const ForgetPasswordMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tWhiteColor,
      body: Container(
        margin: EdgeInsets.only(top: 200),
        padding: EdgeInsets.all(20),
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(tForgetPasswordImage, width: 100,),
            SizedBox(height: 20,),
            Text(tForgetPassword, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
            Text(tForgetPasswordSubTitle, style: TextStyle(fontSize: 17), textAlign: TextAlign.center,),

            SizedBox(height: 20),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      labelText: "Email",
                      hintText: "Enter your email",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: tSecondaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(),
                    ),
                    child: Text("Next"),
                  ),
                ],
              ),
            )
          ],
        )
      )
    );
  }
}