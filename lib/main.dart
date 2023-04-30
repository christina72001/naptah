import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naptah/languages/langs.dart';
import 'package:naptah/onboardingScreens/onboardingPage.dart';
import 'package:naptah/shared/blocObserver.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);

    return MaterialApp(
      builder: DevicePreview.appBuilder,
      theme: ThemeData(primaryColor: const Color(0xff184A2C)),
      debugShowCheckedModeBanner: false,
      supportedLocales: Languages.all,
      title: 'Flutter Demo',
      home: OnboardingPage(),
    );
    //
  }
}
