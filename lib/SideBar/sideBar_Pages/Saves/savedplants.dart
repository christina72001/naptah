import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:naptah/Home/homePage.dart';
// import 'package:naptah/mainPage/Home/homePage.dart';
import 'package:naptah/SideBar/sideBar_Pages/Saves/listPlant.dart';
import 'package:naptah/SideBar/sideBar_Pages/Saves/savedPlantsData.dart';


class SavedPlant extends StatelessWidget {
  SavedPlant({Key? key}) : super(key: key);

  final List<SavedPlant> plants = List.from(saved);

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
          "Saved Plants",
          style: GoogleFonts.merriweatherSans(
              fontSize: 20, color: Color(0xff184A2C)),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) =>
            ListPlantsWidget(item: saved[index], onClicked: () {}),
      ),
    );
  }
}

// child: Padding(
// // padding: const EdgeInsets.all(18.0),
// // child: Container(
// // width: 370,
// // height: 150,
// // decoration: BoxDecoration(
// // boxShadow: [
// // BoxShadow(
// // color: Colors.black26,
// // offset: Offset(2, 3),
// // blurRadius: 10,
// // spreadRadius: 1,
// // ),
// // ],
// // color: Colors.white,
// // borderRadius: BorderRadius.all(Radius.zero),
// // ),
// // child: Row(
// // crossAxisAlignment: CrossAxisAlignment.center,
// // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // children: [
// // Container(
// // height: 100,
// // width: 150,
// // decoration:
// // BoxDecoration(borderRadius: BorderRadius.circular(25)),
// // child: Image.asset("assets/saved_images/lemon.png"),
// // ),
// // Column(
// // mainAxisAlignment: MainAxisAlignment.center,
// // crossAxisAlignment: CrossAxisAlignment.start,
// // children: [
// // Text(
// // "Lemon",
// // style: GoogleFonts.merriweatherSans(
// // fontSize: 21,
// // fontWeight: FontWeight.normal,
// // color: Color(0xff184A2C),
// // ),
// // ),
// // Text(
// // "Saved day 19/15",
// // style: GoogleFonts.merriweatherSans(
// // fontSize: 18,
// // fontWeight: FontWeight.normal,
// // color: Color(0xff707070),
// // ),
// // ),
// // ],
// // ),
// // IconButton(
// // onPressed: () {},
// // icon: Image.asset('assets/saved_images/delete.png'),
// // ),
// // ],
// // ),
// // ),
// // ),
//
//
