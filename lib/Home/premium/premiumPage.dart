import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'package:naptah/Home/premium/paymentDetails.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class premiumPage extends StatefulWidget {
  const premiumPage({super.key});

  @override
  State<premiumPage> createState() => _premiumPageState();
}

class _premiumPageState extends State<premiumPage> {
  int selectedButton = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffEBFDF2),
      appBar: AppBar(
        backgroundColor: Color(0xffEBFDF2),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            size: 45,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Color(0xff707070)),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20.0),
                topRight: Radius.circular(20.0)),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Image(image: AssetImage('assets/badge.png')),
                SizedBox(width: 10),
                Text('premium',
                    style: GoogleFonts.merriweatherSans(fontSize: 30))
              ]),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                      "It provides you with the correspondence of experts and professors in the field of plants at any time.",
                      style: TextStyle(
                          color: Color(0xff707070),
                          fontSize: 16,
                          fontFamily: 'merriweatherSans'))),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: MaterialButton(
                      minWidth: 310,
                      height: 68,
                      onPressed: () {
                        setState(() {
                          selectedButton = 0;
                        });
                      },
                      child: Text("(1) month         79,43 P.E/Month",
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'merriweatherSans')),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(
                            width: selectedButton == 0 ? 2 : 1,
                            color: selectedButton == 0
                                ? Color(0xff184A2C)
                                : Color(0xffCFCDCD),
                          )))),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: MaterialButton(
                      minWidth: 310,
                      height: 96,
                      onPressed: () {
                        setState(() {
                          selectedButton = 1;
                        });
                      },
                      child: Text("Year               788,43 P.E/Year",
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'merriweatherSans')),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(
                              width: selectedButton == 1 ? 2 : 1,
                              color: selectedButton == 1
                                  ? Color(0xff184A2C)
                                  : Color(0xffCFCDCD))))),
              Padding(
                  padding: const EdgeInsets.all(12),
                  child: MaterialButton(
                      minWidth: 310,
                      height: 96,
                      onPressed: () {
                        setState(() {
                          selectedButton = 2;
                        });
                      },
                      child: Text("(6) month      543,06 P.E",
                          style: TextStyle(
                              fontSize: 20, fontFamily: 'merriweatherSans')),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(
                              width: selectedButton == 2 ? 2 : 1,
                              color: selectedButton == 2
                                  ? const Color(0xff184A2C)
                                  : const Color(0xffCFCDCD))))),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 310,
                      height: 41,
                      decoration: BoxDecoration(
                        color: const Color(0xff184A2C),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: MaterialButton(
                          onPressed: () {
                             showDialog(
                      context: context, builder: (context) => paymentDetails());
                          },
                          child: const Text('Start premium',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                              ))))),
              TextButton(
                onPressed: () {
                  showDialog(
                      context: context, builder: (context) => paymentDetails());
                },
                child: const Text(
                  'Free trial for 7 days for subscribers  ',
                  style: TextStyle(
                      color: Color(0xff184A2C),
                      fontSize: 12,
                      fontFamily: 'merriweatherSans'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
