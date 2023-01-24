import 'package:flutter/material.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'HomePage.dart/Camera.dart';
import 'package:naptah/loginScreens/SignupScreen.dart';
import 'package:naptah/onboardingScreens/onboardingPage.dart';
import 'package:device_preview/device_preview.dart';

void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: OnboardingPage(),
    );
  }
}
