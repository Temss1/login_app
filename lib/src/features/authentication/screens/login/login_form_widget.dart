import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_btn.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person_outline_outlined),
                labelText: "Email",
                hintText: "Enter your email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.fingerprint),
                labelText: "Password",
                hintText: "Enter your password",
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.remove_red_eye_sharp),
                )
              ),
            ),
            SizedBox(height: 20),

            // forgot password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  showModalBottomSheet(
                    context: context, 
                    builder: (sheetContext) => Container(
                      padding: EdgeInsets.all(tDefaultSize),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(tForgetPasswordTitle, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),),
                          Text(tForgetPasswordSubTitle, style: TextStyle(fontSize: 17),),
                          SizedBox(height: 30,),
                          ForgetPasswordBtn(
                            title: tResetViaEmailTitle, 
                            subtitle: tResetViaEmailSubtitle, 
                            icon: Icons.email_outlined, 
                            onTap: () {
                             Navigator.pop(sheetContext);
                             Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordMail()));
                            },
                          ),
                          SizedBox(height: 30,),
                          ForgetPasswordBtn(
                            title: tResetViaPhoneTitle, 
                            subtitle: tResetViaPhoneSubtitle, 
                            icon: Icons.mobile_friendly_rounded, 
                            onTap: () {
                             
                            },
                          ),
                        ],
                      )
                    ),
                  );
                },
                child: Text(tForgotPassword, style: TextStyle(fontSize: 16),),
              ),
            ),

            // login button
            ElevatedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(),
                padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: (){},
              child: Text(tLogin.toUpperCase()),
            ),
          ],
        ),
      ),
    );
  }
}