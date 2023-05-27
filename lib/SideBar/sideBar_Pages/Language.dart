import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Language extends StatelessWidget {
  const Language({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Color(0xff707070),
              size: 30,
            )),
        title: Text(
          "Language",
          style: GoogleFonts.merriweatherSans(
              fontSize: 20, color: Color(0xff184A2C)),
        ),
      ),
      
    );
  }
}
