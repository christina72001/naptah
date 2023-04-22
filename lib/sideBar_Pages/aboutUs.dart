import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/mainPage/Home/homePage.dart';

import 'package:naptah/sideBarMenu/sideBarMenu.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff707070),
              size: 30,
            )),
        title: Text(
          "About Us",
          style: GoogleFonts.merriweatherSans(
              fontSize: 20, color: Color(0xff184A2C)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Column(
          children: [
            Image.asset("assets/sideBar-images/naptahPng.png"),
            Text(
              "Naptah is a cutting-edge application for diagnosing plant diseases.",
              style: GoogleFonts.merriweatherSans(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "developed by a team of students from the Faculty of Computers and Information at Mansoura University in Egypt.",
              style: GoogleFonts.merriweatherSans(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The application leverages the latest advancements in computer technology and artificial intelligence to accurately diagnose a wide range of plant diseases.",
              style: GoogleFonts.merriweatherSans(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "With Naptah, plant growers and agricultural professionals can easily access the information they need to ensure their crops are healthy and productive.",
              style: GoogleFonts.merriweatherSans(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color(0xff4A4B4D),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "The team behind Naptah is dedicated to providing users with a user-friendly, reliable and effective solution for diagnosing plant diseases.",
              style: GoogleFonts.merriweatherSans(
                fontWeight: FontWeight.normal,
                fontSize: 18,
                color: Color(0xff4A4B4D),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
