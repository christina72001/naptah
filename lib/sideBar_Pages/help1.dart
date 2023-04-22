import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/sideBar_Pages/help.dart';

class Help1 extends StatelessWidget {
  const Help1({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) => const Help()),
              );
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff707070),
              size: 30,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/naptah1.png"),
                  Text(
                    "Hepl Center",
                    style: GoogleFonts.merriweatherSans(
                        fontWeight: FontWeight.normal, color: Color(0xff184A2C)),
                  ),
                ],
              ),
              Text(
                "How do I diagnose a plant?",
                style: GoogleFonts.merriweatherSans(
                    fontWeight: FontWeight.normal, color: Color(0xff184A2C)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
