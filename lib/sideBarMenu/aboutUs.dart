import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/homePage.dart';
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
          icon: Icon(Icons.arrow_back_ios,color: Color(0xff707070),size: 30,)
        ),
        title: Text(
          "About Us",
          style: GoogleFonts.merriweatherSans(
              fontSize: 20, color: Color(0xff184A2C)),
        ),
      ),
      body: Column(children: [
        Text("")
      ],),
    );
  }
}
