import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:login_app/src/constants/text_strings.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Center(
              child: Text(tOtpTitle, style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),)),
            Text(tOtpSubTitle, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
            SizedBox(height: 40,),
            Text(tOtpMessage, textAlign: TextAlign.center,),
            SizedBox(height: 20),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withValues(alpha: 0.1),
              filled: true,
              fieldWidth: 48,
              onSubmit: (code) {
                print("OTP Entered: $code");
              },
            ),
            SizedBox(height: 20),
            ElevatedButton (
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(),
              ),
              child: Text("Next"),
            ),
          ]
        ),
      ),
    );
  }
}