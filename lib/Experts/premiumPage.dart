import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/homePage.dart';
import 'package:naptah/loginScreens/SigninScreen.dart';
import 'package:naptah/Experts/paymentDetails.dart';
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


      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: Color(0xff707070)),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(image: AssetImage('assets/naptah1.png')),
                        Text('premium',
                            style: GoogleFonts.merriweatherSans(fontSize: 30))
                      ]),
                ),
                Text(
                    "It provides you with the correspondence of experts and professors in the field of plants at any time.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontFamily: 'merriweatherSans')),
                MaterialButton(
                    minWidth: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.07,
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
                        ))),
                MaterialButton(
                    minWidth: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.07,
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
                                : Color(0xffCFCDCD)))),
                MaterialButton(
                    minWidth: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.07,
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
                                : const Color(0xffCFCDCD)))),
                Container(
                    width: MediaQuery.of(context).size.height * 0.38,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(
                      color: const Color(0xff184A2C),
                      borderRadius: BorderRadius.circular(28),
                    ),
                    child: MaterialButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) => paymentDetails());
                        },
                        child: const Text('Start premium',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 19,
                            )))),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => paymentDetails());
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
      ),
    );
  }
}
