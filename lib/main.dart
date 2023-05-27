import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:naptah/homePage/homePage.dart';
import 'package:naptah/languages/langs.dart';
import 'package:naptah/onboardingScreens/onboardingPage.dart';
// import 'package:naptah/mainPage/Home/homePage.dart';
import 'package:naptah/shared/blocObserver.dart';
import 'package:naptah/SideBar/sideBarMenu.dart';
import 'package:naptah/SideBar/sideBar_Pages/aboutUs.dart';
import 'package:naptah/SideBar/sideBar_Pages/feedback.dart';
import 'package:naptah/SideBar/sideBar_Pages/help.dart';
import 'package:naptah/SideBar/sideBar_Pages/Saves/savedplants.dart';


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
      supportedLocales: Languages.all,
      title: 'Flutter Demo',
      home:  OnboardingPage(),
    );
    //  
  }
}
