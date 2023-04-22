import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/mainPage/Home/homePage.dart';
import 'package:naptah/sideBar_Pages/help1.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                "Hi, how  can we help you ?",
                style: GoogleFonts.merriweatherSans(
                    fontWeight: FontWeight.normal, color: Color(0xff184A2C)),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help1()),
                );
              },
                child: Text(
                  "How do I diagnose a plant?",
                  style: GoogleFonts.merriweatherSans(
                      fontWeight: FontWeight.normal, color: Color(0xff707070)),
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xffDDDDDD),
              ),

              TextButton(
                onPressed: () {},
                child: Text(
                  "How can I access the previous plant diagnosis?",
                  style: GoogleFonts.merriweatherSans(
                      fontWeight: FontWeight.normal, color: Color(0xff707070)),
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xffDDDDDD),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  "How do I communicate with experts in the field of plants?",
                  style: GoogleFonts.merriweatherSans(
                      fontWeight: FontWeight.normal, color: Color(0xff707070)),
                ),
              ),
              Divider(
                thickness: 1,
                color: Color(0xffDDDDDD),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
