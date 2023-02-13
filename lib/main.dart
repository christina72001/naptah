import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naptah/onboardingScreens/onboardingPage.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'package:naptah/loginScreens/SignupScreen.dart';
import 'mainPage/popularPlants/vegetables.dart';
import 'mainPage/premium/premiumPage.dart';
import 'mainPage/test.dart';
import 'package:naptah/shared/blocObserver.dart';
import 'mainPage/test2.dart';
import 'mainPage/premium/paymentDetails.dart';


void main() {
  Bloc.observer = MyBlocObserver();
  runApp(DevicePreview(builder: (context)=> MyApp()));
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
   
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      theme: ThemeData(
        primaryColor: Color(0xff184A2C)
      ),
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      home:  OnboardingPage(),
    );
    //  
  }
}
