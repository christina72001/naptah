import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/bottom_bar.dart';
import 'package:naptah/SideBar/sideBar_Pages/q&a/answer.dart';

class Questions extends StatelessWidget {
  const Questions({Key? key}) : super(key: key);

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
                MaterialPageRoute(builder: (context) =>  BottomBar()),
              );
            },
            icon: Icon(Icons.arrow_back_ios,color: Color(0xff707070),size: 30,)
        ),
        title: Text(
          "Q&A",
          style: GoogleFonts.merriweatherSans(
              fontSize: 30, color: Color(0xff184A2C)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Some of the most frequently asked questions about the plants",
            style: GoogleFonts.merriweatherSans(
            color: Colors.black, fontSize: 20),),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Is it possible to tell how to take care of tomato leaves?",
                  style: GoogleFonts.merriweatherSans(
                      color: Color(0xff707070), fontSize: 20),
                )),
            TextButton(
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>const Answers())),
                child: Text(
                  "How to save plant orange and to get good fruits?",
                  style: GoogleFonts.merriweatherSans(
                      color: Color(0xff707070), fontSize: 20),
                )),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Do plant diseases affect humans and share of diseases?",
                  style: GoogleFonts.merriweatherSans(
                      color: Color(0xff707070), fontSize: 20),
                )),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Is it possible to tell how get rid disease early bloating?",
                  style: GoogleFonts.merriweatherSans(
                      color: Color(0xff707070), fontSize: 20),
                )),
            SizedBox(
              height: 5,
            ),
            TextButton(
                onPressed: (){} ,
                child: Text(
                  " is there a reliable treatment get rid of the disease? ",
                  style: GoogleFonts.merriweatherSans(
                      color: Color(0xff707070), fontSize: 20),
                )),
          ],
        ),
      ),
    );
  }
}
