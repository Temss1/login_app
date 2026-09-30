import 'package:flutter/material.dart';
import 'package:login_app/src/features/authentication/screens/splash_screen/splash_screen.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:login_app/src/utils/theme/theme.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // theme: TAppTheme.lightTheme,
      // darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}