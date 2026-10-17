import 'package:flutter/material.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

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
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){},
                child: Text(tForgotPassword, style: TextStyle(fontSize: 16),),
              ),
            ),
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