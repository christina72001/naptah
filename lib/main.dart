import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naptah/chatting/Account.dart';
import 'package:naptah/chatting/chat.dart';
import 'package:naptah/homePage/bottom_bar.dart';
import 'package:naptah/homePage/homePage.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'package:naptah/loginScreens/SignupScreen.dart';
import 'package:naptah/onboardingScreens/onboardingPage.dart';
import 'package:naptah/shared/blocObserver.dart';
import 'package:naptah/sideBarMenu/aboutUs.dart';
import 'package:naptah/sideBar_Pages/q&a/Q&A.dart';
import 'package:naptah/sideBar_Pages/q&a/answer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      home: const AccountPage(),
    );
  }
}
