import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Posting extends StatelessWidget {
  const Posting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Write a post",
          style: GoogleFonts.merriweatherSans(
              fontSize: 30,
              fontWeight: FontWeight.normal,
              color: Color(0xff184A2C)),
          textAlign: TextAlign.center,
        ),
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xff184A2C),
          ),
        ),
      ),
      body: Column(
        children: [
          Divider(
            thickness: 1,
            color: Color(0xffCFCDCD),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Image.asset('assets/camera2.png'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Take a photo",
                      style: GoogleFonts.merriweatherSans(
                          fontWeight: FontWeight.normal,
                          color: Color(0xff707070),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
              VerticalDivider(
                thickness: 1,
                width: 10,
                color: Colors.black,
                indent: 1, //Spacing at the top of divider.
                endIndent: 30,
              ),
              Row(
                children: [
                  Image.asset('assets/image2.png'),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Choose a photo",
                      style: GoogleFonts.merriweatherSans(
                          fontWeight: FontWeight.normal,
                          color: Color(0xff707070),
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            thickness: 1,
            color: Color(0xffCFCDCD),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/naptah500.png'),
                  backgroundColor: Colors.blueGrey,
                ),
                SizedBox(
                  width: 15,
                ),
                Text(
                  "Diaa Shahda",
                  style: GoogleFonts.merriweatherSans(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xffA59F9F),
                  width: 2,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "What would you like to write?",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff184A2C),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Publish Post",
                  style: GoogleFonts.merriweatherSans(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
