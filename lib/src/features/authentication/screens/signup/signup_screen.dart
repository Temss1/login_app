import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_form_widget.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return 
      Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(30),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    tWelcomeScreenImage,
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Text(
                    tSignupTitle,
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    tSignupSubTitle,
                    style: TextStyle(fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  SignupFormWidget(
                    controller: controller.fullName,
                    label: "Full Name",
                    hint: "Enter your Full Name",
                    prefixIcon: Icons.person_outline_outlined,
                  ),
                  SignupFormWidget(
                    controller: controller.email,
                    label: "Email",
                    hint: "Enter your Email",
                    prefixIcon: Icons.email,
                  ),
                  SignupFormWidget(
                    controller: controller.phoneNo,
                    label: "Phone No",
                    hint: "Enter your Phone Number",
                    prefixIcon: Icons.phone,
                  ),
                  SignupFormWidget(
                    controller: controller.password,
                    label: "Password",
                    hint: "Enter your Password",
                    prefixIcon: Icons.fingerprint,
                    suffixIcon: Icons.remove_red_eye_sharp,
                  ),
                  SizedBox(height: 10,),

                  OutlinedButton(
                    onPressed: (){
                      if(_formKey.currentState!.validate()) {
                        SignUpController.instance.registerUser(controller.email.text.trim(), controller.password.text.trim());
                      }
                    }, 
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                      shape: RoundedRectangleBorder(),
                      backgroundColor: tSecondaryColor,
                      foregroundColor: tCardBgColor,
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text(tSignup, style: TextStyle(fontSize: 16),),
                  ),
                  SizedBox(height: 10,),
                  Column(
                    children: [
                      Text("OR"),
                      SizedBox(height: 10,),
                     OutlinedButton.icon(
                      onPressed: (){}, 
                      icon: Image.asset(tGoogleLogoImage, width: 30,),
                      label: Text(tSignInWithGoogle),
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight),
                        shape: RoundedRectangleBorder(),
                        minimumSize: Size(double.infinity, 50),
                      ),
                    ),
                    ],  
                  ),
                  SizedBox(height: 3,),
                  Center(
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                      },
                      child: Text.rich(
                        TextSpan(
                          text: tAlreadyHaveAnAccount,
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: tLogin,
                              style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 136, 84, 198), fontWeight: FontWeight.bold),
                            )
                          ]
                        )
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
    
    );
  }
}
