import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/sizes.dart';
import 'package:login_app/src/constants/text_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Text("OR", textAlign: TextAlign.center,)),
        SizedBox(height: 10,),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(image: AssetImage(tGoogleLogoImage), width: 30,),
            onPressed: (){},
            label: Text(tSignInWithGoogle),
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(),
              padding: EdgeInsets.symmetric(vertical: tButtonHeight),
            ),
          ),
        ),
         SizedBox(height: 10,),
                Center(
                  child: TextButton(
                    onPressed: (){}, 
                    child: Text.rich(
                      TextSpan(
                        text: tAlreadyHaveAnAccount,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(
                            text: tSignup,
                            style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 136, 84, 198), fontWeight: FontWeight.bold),
                          )
                        ]
                      ),
                    ),
                  ),
                ) ,
      ]
    );
  }
}

