import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/Scanning/resultScreen.dart';
import 'package:naptah/languages/langs.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'package:naptah/loginScreens/SignupScreen.dart';
import 'package:naptah/loginScreens/utlis.dart';
import 'package:naptah/onboardingScreens/onboardingPage.dart';
import 'package:naptah/shared/blocObserver.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Bloc.observer = MyBlocObserver();
  runApp(DevicePreview(builder: (context) => MyApp()));
}
final navigatorKey=GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return MaterialApp(
      scaffoldMessengerKey: Utlis.messengerKey,
      navigatorKey: navigatorKey,
      builder: DevicePreview.appBuilder,
      theme: ThemeData(primaryColor: Color(0xff184A2C)),
      debugShowCheckedModeBanner: false,
      supportedLocales: Languages.all,
      title: 'Flutter Demo',
      home: OnboardingPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Something went Error"),
                );
              } else if (snapshot.hasData) {
                return HomePage();
              } else {
                return SignUp();
              }
            }),
      );
}
